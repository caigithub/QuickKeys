;#common operation {
    copy()
    {
        command_operation("operator.copy", "^{c}" )
        return
    }

    paste()
    {
        command_operation("operator.paste" , "^{v}" )
        return
    }

    cut()
    {
        command_operation("operator.cut", "^{x}" )
        return
    }

    del()
    {
        command_operation("operator.del", "{del}" )
        return
    }

    backspace()
    {
        command_operation("operator.backspace", "{backspace}" )
        return
    }
;#common operation }


;===============================================
;========== basic operation define =============
;===============================================

command_operation( name , command ) {

    monitor_command(name)
    SendInput %command%

    if( isOperationMode() )
    {
        enterMoveMode()
    }
    else
    {
        enterTypeMode()
    }
}
