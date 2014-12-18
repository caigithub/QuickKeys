;# common operation {
    $RAlt::
        send {AppsKey}
        return
;# common operation }

;# line operation {
    ; left hand
        $!q::
            send {home}{delete}
            return

        $!w::
            send +{home}{delete}
            return

        $!e::
            send {space}{home}+{end}{delete}{delete}
            return

        $!r::
        $!t::
            send {end}{backspace}
            return

        $!d::
            send +{end}{backspace}
            return
        
    ; right hand { 
        ; copy {
            $!y::
                send {home}+{end}^c
                ;send {home}{enter}^{enter}
                return
        ; }

        ; paste {
            $!u::
                send {home}^v
                return 

            $!i:: 
                send {end}^v
                return

        
            $!p::
                send {end}{enter}^v
                return 

            $!o::
                send {home}+{end}^c{end}{enter}^v
                return
        ; }

        ; move { 
            $!j::
                send {end}{enter}
                return

            $!k::
                send {home}{enter}{up}
                return
        ; } 
    ; } 
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
