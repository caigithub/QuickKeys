; ==== operator {
    #IF isInAnyMode() 
        $e::deleteCurrentLine()
            
        $t::
        $r::
            backspace()
            return
        
        $a::selectCurrentDoc()
        $s::^s
        $d::del()
        $f::
            enterMoveMode()
            sendPlay {left}{right}
            return

        $z::^z
        $x::cut()

        $y::copy()
        $p::paste()
        $v::paste()

        $c::
            del()
            enterEditMode()
            return
    #IF
; ==== operator }


