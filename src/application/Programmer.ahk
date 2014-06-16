; ==== vim {
    #IfWinActive , - GVIM
        $~ESC::
            enterEditMode()
            return
    #If
; ==== vim }

    $!i::
        send {enter}{enter}{up}{end}
        return 

    $!u::
        send {delete}{backspace}
        return

    $+space::
        send {space}={space}
        return

    $!;::
        monitor( "***  " . "pro.line.end" )
        if( isDoubleClick("new.program.end") )
        {
            send {enter}
        }
        else
        {
            send {end}`;
        }

        return

    $!0::
        monitor( "*** " . "pro.line.end - char )")
        send {end})
        return

    $!]::
        monitor( "*** " . "pro.line.end - char ]")
        send {end}}
        return

   $!/::
        monitor( "***  " . "pro.line.commont" )
        send {home}//
        return

    $RCtrl::
        send {delete}
        return
