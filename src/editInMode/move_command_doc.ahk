;========== in the doc ==============

    moveToDocBegin( force_selection = false )
    {
        move_or_select_operation("document.begin", "^{home}", force_selection )
        return
    }

    moveToDocEnd( force_selection = false  )
    {
        move_or_select_operation("document.end",  "^{end}", force_selection )
        return
    }

    selectCurrentDoc()
    {
        select_only_operation("document.all" , "^a")
    }

