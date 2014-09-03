;# common operation {
    $RAlt::
        send {AppsKey}
        return
;# common operation }

;# line operation {
    ; left hand
        $!e::
            send {home}+{end}{delete}
            return

        $!q::
            send {home}{delete}
            return

        $!w::
            send {end}{backspace}
            return
        
        $!r::
            send +{home}{delete}
            return

        $!d::
            send +{end}{delete}
            return

    ; right hand
        $!y::
        $!o::
            send {home}+{end}^c
            return

        $!u::
            send +{home}^c
            return

        $!i::
            send +{end}^c
            return

        $!j::
            send {end}{enter}
            return

        $!k::
            send {home}{enter}{up}
            return
;# line operation }


;# line end append {
    $!0::
        send {end})
        return

    $!]::
        send {end}{`}}
        return

    $!,::
        send {end},
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
;# line end append }

;# line begin insert {
    $!/::
        monitor( "***  " . "pro.line.commont" )
        send {home}//
        return
;# line begin insert }
