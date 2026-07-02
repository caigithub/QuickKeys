
;========== char ===========

    moveToNextChar( force_selection = false )
    {
        move_or_select_operation("char.right" , "{right}", force_selection )
        return
    }

    moveToPreviousChar( force_selection = false )
    {
        move_or_select_operation("char.left", "{left}" , force_selection )
        return
    }
