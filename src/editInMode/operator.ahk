; ==== operator {
    #IF isInAnyMode() 
        $q::
            sendPlay {home}{delete}
            return
        $e::deleteCurrentLine()
        $r::
        $t::
            sendPlay {backspace}
            return
        
        $a::
            send {home}
            enterEditMode()   
            return
        $s::^s
        $d::del()
        $f::
            enterMoveMode()
            sendPlay {left}{right}
            return

        $z::^z
        $x::cut()
        $c::
            send {space}{backspace}
            enterEditMode()
            return
        $v::paste()

        $y::copy()
        $p::
            send {end}{enter}^v
            return

        $~^f::
        $~^o::
            enterEditMode()
            return
    #IF
; ==== operator }


