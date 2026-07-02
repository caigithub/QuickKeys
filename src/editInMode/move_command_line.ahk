;========== line ===========

    moveToNextLine( force_selection = false  )
    {
        move_or_select_operation_customized("line.down",  "{down}", "+{down}+{end}", force_selection )
        return
    }

    moveToPreviousLine( force_selection = false )
    {
        move_or_select_operation_customized("line.up", "{up}", "+{up}+{home}+{home}", force_selection )
        return
    }

;======== in the line ===========

    moveToLineEnd( force_selection = false  )
    {
        move_or_select_operation("line.end", "{end}", force_selection )
        return
    }

    moveToLineBegin( force_selection = false  )
    {
        move_or_select_operation("line.begin", "{home}", force_selection )
        return
    }

    selectCurrentLine()
    {
        select_only_operation("line.current", "{home}+{end}")
        return
    }

;====== several line ========

    moveToNextSeveralLine( force_selection = false )
    {
        move_or_select_operation_customized("m-line.down", "{down 3}", "+{down 3}+{end}", force_selection )
        return
    }

    moveToPreviousSeveralLine( force_selection = false )
    {
        move_or_select_operation_customized("m-line.up", "{up 3}", "+{up 3}+{home}+{home}", force_selection )
        return
    }
