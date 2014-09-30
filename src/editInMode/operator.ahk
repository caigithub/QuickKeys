; ==== operator {
    #IF isInAnyMode() 
        $q::
            sendPlay {home}{delete}
            return

        $r::
            sendPlay {backspace}
            return

        $t::
            sendPlay {end}{backspace}
            return

        $e::deleteCurrentLine()
            
        $d::del()
        $f::
            enterMoveMode()
            sendPlay {left}{right}
            return

        $z::^z
        $x::cut()

        $y::copy()
        $v::paste()

        $p::
            send {end}{enter}^v
            return

        $c::
            send {space}{backspace}
            enterEditMode()
            return
    #IF
; ==== operator }


