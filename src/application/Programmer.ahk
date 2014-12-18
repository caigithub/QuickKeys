; ==== vim {
    #IfWinActive , - GVIM
        $~ESC::
            enterEditMode()
            return
    #If
; ==== vim }
    $!space::
    $+space::
        sendPlay {=}
        return

    $RCtrl::
        sendPlay {delete}
        return


; ==== text fixing {
    $`::
        sendPlay +{Tab}
        return

    $+Tab::
        sendPlay {home}{Tab} 
        return
    
    $+Enter::
    $!Enter::
        appendNewLine()
        return

; ==== text fixing }


    

