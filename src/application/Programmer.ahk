; ==== vim {
    #IfWinActive , - GVIM
        $~ESC::
            enterEditMode()
            return
    #If
; ==== vim }

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
