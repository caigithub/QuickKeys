#IF isOperationMode()

    ; === left hand

        $e::
            noDoubleClick()
            deleteCurrentLine()
            return

        $r::
            noDoubleClick()
            backspace()
            return

        $d::
            noDoubleClick()
            del()
            return

        $x::
            noDoubleClick()
            cut()
            return

        $s::^s
        $z::^z

        $c::
            noDoubleClick()
            copy()
            return

        $v::
            noDoubleClick()
            paste()
            return

    ; === right hand

        $y::
            if( isDoubleClick("copy.whole.line") )
            {
                copyCurrentLine()
            }
            else
            {
                copy()
            }
            return

        $p::
            noDoubleClick()
            pasteInNewLine()
            return

#IF
