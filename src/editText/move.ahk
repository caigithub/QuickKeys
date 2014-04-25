#IF isMoveMode()
    ;====== char ======
    $n::moveToPreviousChar()
    $.::moveToNextChar()

    ;====== word ======
    $l::moveToNextWord()
    $h::moveToPreviousWord()

    $w::moveToNextSeveralWord()
    $b::moveToPreviousSeveralWord()
    
    $j::moveToNextLine()
    $k::moveToPreviousLine()


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
        if( isDoubleClick("move.LineEnd")  )
        {
            moveToDocEnd()
        }
        else
        {
            moveToLineEnd()
        }
        return

    ;====== m-line ======
    $m::moveToNextSeveralLine()
    $,::moveToPreviousSeveralLine()
#IF

#IF isSelectMode()
    ;====== char ======
    $n::selectToPreviousChar()
    $.::selectToNextChar()

    ;====== word ======
    $l::selectToNextWord()
    $h::selectToPreviousWord()

    $w::selectToNextSeveralWord()
    $b::selectToPreviousSeveralWord()
    
    ;====== line =======
    $j::selectToNextLine()
    $k::selectToPreviousLine()

    $g::
        if( isDoubleClick("select.LineBegin") )
        {
            selectToDocBegin()
        }
        else
        {
            selectToLineBegin()
        }
        return

    $;::
        if( isDoubleClick("select.LineEnd") )
        {
            selectToDocEnd()
        }
        else
        {
            selectToLineEnd()
        }
        return


    ;===== m-line =======
    $m::selectToNextSeveralLine()
    $,::selectToPreviousSeveralLine()
#IF


#IF isInMode()
    $u::selectToPreviousWord()
    $i::selectToNextWord()

    $p::selectToLineEnd()
    $y::selectToLineBegin()
    
    $o::selectCurrentLine()
#IF

