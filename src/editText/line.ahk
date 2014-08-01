;# common operation {
    $!r::backspace()
    $!p::paste()
    $!d::del()
    $RAlt::
        sendPlay {AppsKey}
        return
;# common operation }

;# line operation {
    $!e::
        sendPlay {home}+{end}{delete}
        return

    $!q::
        sendPlay {home}{delete}
        return

    $!w::
        sendPlay {end}{backspace}
        return
        
    $!o::
        sendPlay {home}+{end}^c
        return

    $!u::
        sendPlay +{home}^c
        return

    $!i::
        sendPlay +{end}^c
        return

    $!h::
        sendPlay +{home}{delete}
        return

    $!l::
        sendPlay +{end}{delete}
        return
;# line operation }


;# line end append {
    $!0::
        sendPlay {end})
        return

    $!]::
        sendPlay {end}{`}}
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

;# line end append }

;# line begin insert {
    $!/::
        monitor( "***  " . "pro.line.commont" )
        sendPlay {home}//
        return
;# line begin insert }
