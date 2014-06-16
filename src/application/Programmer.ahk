; ==== vim {
    #IfWinActive , - GVIM
        $~ESC::
            enterEditMode()
            return
    #If
; ==== vim }
    $!i::
        expandPair()
        return 

    $!u::
        sendPlay {delete}{backspace}
        return

    $!space::
    $+space::
        sendPlay {=}
        return

    $!;::
        monitor( "***  " . "pro.line.end" )
        if( isDoubleClick("new.program.end") )
        {
            sendPlay {enter}
        }
        else
        {
            sendPlay {end}`;
        }

        return

    $!0::
        monitor( "*** " . "pro.line.end - char )")
        sendPlay {end})
        return

    $!]::
        monitor( "*** " . "pro.line.end - char ]")
        sendPlay {end}}
        return

   $!/::
        monitor( "***  " . "pro.line.commont" )
        sendPlay {home}//
        return

    $RCtrl::
        sendPlay {delete}
        return
