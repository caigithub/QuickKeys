mode_name := "edit"
SetCapsLockState, Off

$Capslock::
   if( isDoubleClick("capslock.status") )
    {
        enterMoveMode()
        updateLockNotify()
    }
    else
    {
        press_down_time := A_TickCount
        last_lock_mode_name := mode_name

        enterMoveMode()
        
        KeyWait, Capslock  ; 等待用户物理地松开?????
        
        if( A_TickCount - press_down_time >= 130 ) ; caps lock + operation
        {   
            enterEditMode()

            if(  last_lock_mode_name <> "edit" )
            {
               updateLockNotify()
            }
        }        
        else ; simple change state
        {
     
            toggleMode( last_lock_mode_name )
            updateLockNotify()
        }
    }
    return

;================================================================================================

CapslockStatusDirect() {
    press_down_time := A_TickCount
    last_lock_mode_name := mode_name

    enterMoveMode()
        
    KeyWait, Capslock  ; 等待用户物理地松开?????
    
    if( A_TickCount - press_down_time >= 130 ) ; caps lock + operation
    {   
        enterEditMode()
    }        

    updateLockNotify()
    return
}
;================================================================================================

#IF isInAnyMode()
    $LButton::
    $RButton::
    $MButton::
        enterEditMode()
        updateLockNotify()
        
        StringReplace, k_ThisHotkey, A_ThisHotkey, ~
        StringReplace, k_ThisHotkey, k_ThisHotkey, $
        sendPlay {%k_ThisHotkey%}
        
        return

    $Shift::
        enterEditMode()
        updateLockNotify()
        return

#IF

;========= normal mode

enterEditMode()
{
    enterMode("edit")
}

isEditMode()
{
    return isMode( "edit")
}

;========= move mode
enterMoveMode()
{
    enterMode( "move")
}

isMoveMode()
{
    return isMode( "move")
}


;========== select mode

enterSelectMode()
{
    enterMode( "select" )
}

isSelectMode()
{
    return isMode( "select" )
}

;==============

isInAnyMode()
{
    return isMoveMode() or isSelectMode()
}

;==============
toggleMode( last_lock_mode_name )
{
    if(  last_lock_mode_name <> "edit" )
    {
       enterEditMode()
    }
    else
    {
        enterMoveMode()
    }
}

enterMode( in_mode_name )
{
    ;addLog("==> " . in_mode_name . " mode")

    global mode_name 
    mode_name := in_mode_name

    ;addLog("mode_name=" . mode_name )
    updateVimize()
}

isMode( in_mode_name )
{
    global mode_name
    if( mode_name == in_mode_name )
    {
        return true
    }
    else
    {
        return false
    }
}

;=================

updateVimize()
{
    if( isSelectMode() )
    {
        vimize( "Select" )
        return
    }

    if( isMoveMode() )
    {
        vimize("Move")
        return
    }

    unvimize()
}

updateLockNotify()
{
    if( isInAnyMode() )
    {
        lockMoveNotify()
        return
    }

    lockEditNotify()
}
