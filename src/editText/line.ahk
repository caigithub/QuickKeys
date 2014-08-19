;# common operation {
    $RAlt::
        send {AppsKey}
        return
;# common operation }

;# line operation {
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
    $!f::
        send +{end}{delete}
        return

    $!y::
    $!o::
        send +{home}^c
        return

    $!u::
        send +{home}^c
        return

    $!i::
        send +{end}^c
        return
;# line operation }


;# line end append {
    $!0::
        send {end})
        return

    $!]::
        send {end}{`}}
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
