; ==== vim {
    #IfWinActive , - GVIM
        $~ESC::
            enterEcsMode()
            updateLockNotify()
            return
    #If
; ==== vim }
