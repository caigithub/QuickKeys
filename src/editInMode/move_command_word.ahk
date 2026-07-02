;========== word ===========

    moveToNextWord( force_selection = false )
    {
        move_or_select_operation("word.move.right", "^{right}", force_selection )
        return
    }

    moveToPreviousWord( force_selection = false )
    {
        move_or_select_operation("word.move.left", "^{left}", force_selection )
        return
    }

;========== several word ===========

    moveToNextSeveralWord( force_selection = false )
    {
        move_or_select_operation("word.several.right", "^{right 3}", force_selection )
        return
    }

    moveToPreviousSeveralWord( force_selection = false )
    {
        move_or_select_operation("word.several.left", "^{left 3}", force_selection )
        return
    }
