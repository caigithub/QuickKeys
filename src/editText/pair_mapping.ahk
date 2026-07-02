
    ; ------------------

    ; == (
        $(::
            newBracket()
            return

        $!9::
            newBracket( true )
            return

        $9::
            if( isDoubleClick("pair.()") ) {
                SendInput {backspace}
                newBracket( true )
            } else {
                SendInput {9}
            }
            return

        $)::
            if( isDoubleClick("pair.()") ) {
                SendInput {left}
            } else {
                SendInput {)}
            }
            return

    ; == %
        $%::
            newVariable()
            return

        $!5::
            newVariable( true )
            return

    ; == *
        $*::
            newStar()
            return

        $!8::
            newStar( true )
            return

    ; ------------------

    ; == [
        $[::
            newSquare()
            return

        $![::
            newCurveSquare(true)
            return

        ${::
            newCurveSquare()
            return

        $!]::
            moveToLineEnd()
            newCurveSquare(true)
            return

        $]::
            if( isDoubleClick("pair.{}.end") ) {
                SendInput {backspace}
                moveToLineEnd()
                newCurveSquare( true )
            } else {
                SendInput {]}
            }
            return

        $}::
            if( isDoubleClick("pair.{}") ) {
                SendInput {left}
            } else {
                SendInput {}}
            }
            return

    ; ------------------

    ; == <
        $<::
            newAngleSquare()
            return

        $,::
            if( isDoubleClick("pair.<>") ) {
                SendInput {backspace}
                newAngleSquare(true)
            } else {
                SendInput {,}
            }
            return
    ; ------------------
    ; ==
        $"::
            newQuato()
            return

        $'::
            newSingleQuato()
            return

    ; ------------------
    ; remove
        $!-::
        $!=::
            noDoubleClick()
            SendInput {backspace}{delete}
            return
