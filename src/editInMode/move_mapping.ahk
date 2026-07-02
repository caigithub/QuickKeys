#IF isOperationMode()

    ;====== char ======
    ;
    $n::
        noDoubleClick()
        moveToPreviousChar()
        return

    $.::
        noDoubleClick()
        moveToNextChar()
        return

    ;====== word ======
    ;
    $l::
        noDoubleClick()
        moveToNextWord()
        return

    $h::
        noDoubleClick()
        moveToPreviousWord()
        return

    $w::
        noDoubleClick()
        moveToNextWord()
        return

    $b::
        noDoubleClick()
        moveToPreviousWord()
        return

    ;====== line ======
    ;
    $j::
        noDoubleClick()
        moveToNextLine()
        return

    $k::
        noDoubleClick()
        moveToPreviousLine()
        return

    $a::
        noDoubleClick()
        moveToLineBegin()
        return

    $g::
        if( isDoubleClick("move.LineBegin") )
        {
            moveToDocBegin()
        }
        else
        {
            moveToLineBegin()
        }
        return

    $;::
        if( isDoubleClick("move.LineEnd") )
        {
            moveToDocEnd()
        }
        else
        {
            moveToLineEnd()
        }
        return

    ;====== m-line ======
    ;
    $m::
        noDoubleClick()
        moveToNextSeveralLine()
        return

    $,::
        noDoubleClick()
        moveToPreviousSeveralLine()
        return

    ;==================

#IF
