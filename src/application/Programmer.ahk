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
	$+.::
        GetKeyState, state, LShift
        if state = D 
            sendPlay .
        else
            sendPlay >
        return

    $!.::
        sendPlay .
        return 

    $+,::
        GetKeyState, state, LShift
        if state = D 
            sendPlay {,}
        else
            newAngleSquare()
        return

    $!,::
        ;sendPlay {,}
        newAngleSquare( true ) 
        return

    $`::
        sendPlay +{Tab}
        return

    $+Enter::
    $!Enter::
        appendNewLine()
        return

; ==== text fixing }


    

