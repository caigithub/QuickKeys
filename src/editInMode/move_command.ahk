
;===============================================
;========== basic operation define =============
;==============================================

    clearSelection()
    {
        monitor_move("selection.clear", "")
        SendInput {right}
        return
    }

    move_or_select_operation( name, move_key, force_selection = false ){
        move_or_select_operation_customized( name, move_key, "+" . move_key, force_selection)
    }

    move_or_select_operation_customized( name,  move_key, select_key, force_selection = false )
    {
        if ( force_selection ) or ( isSelectMode() )
        {
            select_only_operation( name, select_key)
            return
        }

        move_only_operation( name, move_key)
        return
    }

    move_only_operation(name, key)
    {
        monitor_move(name, "move")
        SendInput %key%
        return
    }

    select_only_operation(name, key)
    {
        monitor_move(name, "select")
        SendInput %key%
        enterSelectMode()
        return
    }
