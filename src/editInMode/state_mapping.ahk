SetCapsLockState, Off


is_quick_mode(press_down_time) {
    return getLastOperationTime() > press_down_time
    ; return ( ( A_TickCount - press_down_time ) >= 150 )
}

$*Capslock::

    ; user press down
        press_down_time := A_TickCount
        already_in_type_mode := isTypeMode()

        enterMoveMode()

    ; user entering quick mode - doing the operation
        ; ...
        ; ...

    ; user release the key
        KeyWait, Capslock

        IfWinActive , - GVIM
        {
            if( is_quick_mode(press_down_time) )
            {
                enterEcsMode()
                return
            }

            enterEcsMode()
            updateLockNotify()
            SendInput {esc}
            return
        }

        if( is_quick_mode(press_down_time) )
        {
            enterTypeMode()
            if not ( already_in_type_mode ) {
                updateLockNotify()
            }
            return
        }

        enterMoveMode()
        updateLockNotify()
        return

    return


;================================================================================================

#IF isOperationMode()

    $~LButton::
    $~RButton::
    $~MButton::
        enterTypeMode()
        updateLockNotify()

        ; StringReplace, k_ThisHotkey, A_ThisHotkey, ~
        ; StringReplace, k_ThisHotkey, k_ThisHotkey, $
        ; SendInput {%k_ThisHotkey%}

        return

    $~Shift::
        enterTypeMode()
        updateLockNotify()
        return

    $~^l::
    $~^f::
    $~^o::
    $~F1::
    $~F2::
    $~F3::
    $~F4::
    $~F5::
    $~F6::
    $~F7::
    $~F8::
    $~F9::
    $~F10::
    $~F11::
    $~F12::
        enterTypeMode()
        updateLockNotify()
        return

#IF
