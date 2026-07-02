#IF isOperationMode()

    $q::
        noDoubleClick()
        selectCurrentDoc()
        return

    $f::
        noDoubleClick()
        enterMoveMode()
        updateLockNotify()
        clearSelection()
        return

    $t::
        noDoubleClick()
        enterSelectMode()
        updateLockNotify()
        return

    $o::
        noDoubleClick()
        if ( isSelectMode() ) {
            moveToLineEnd(true)
        }
        else {
            selectCurrentLine()
        }
        return

    $u::
        noDoubleClick()
        moveToPreviousWord(true)
        return

    $i::
        noDoubleClick()
        moveToNextWord(true)
        return

#IF
