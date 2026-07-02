; === left hand

    $!q::
        noDoubleClick()
        deleteFromLineBegin()
        return

    $!w::
        noDoubleClick()
        deleteToWordEnd()
        return

    $!e::
        noDoubleClick()
        deleteToWordBegin()
        return

    $!r::
        noDoubleClick()
        deleteFromLineEnd()
        return

    $!d::
        noDoubleClick()
        deleteToLineEnd()
        return

    $!Backspace::
        noDoubleClick()
        deleteFromLineEnd()
        return

    $!Delete::
        noDoubleClick()
        deleteToWordEnd()
        return

; === right hand
    $!y::
        noDoubleClick()
        copyCurrentLine()
        return

    $!p::
        noDoubleClick()
        pasteInNewLine()
        return

    $!o::
    $!i::
        noDoubleClick()
        marginCurrentLine()
        return

    $!k::
        noDoubleClick()
        insertNewLineAbove()
        return

    $!j::
        noDoubleClick()
        insertNewLineBelow()
        noDoubleClick()
        return
