copy()
{
    command_operation("operator.copy", "^{c}" , false )
    return
}

paste()
{
    command_operation("operator.paste" , "^{v}" , false )
    return
}

cut()
{
    command_operation("operator.cut", "^{x}", false )
    return
}

del( lineOperation = false )
{
    command_operation("operator.del", "{del}" , lineOperation )
    return
}

backspace()
{
    command_operation("operator.backspace", "{backspace}" , false )
    return
}

insertNewLine()
{
    command_operation("new.line", "{home}{enter}{up}", false )
    return
}

appendNewLine()
{
    command_operation("new.line", "{end}{enter}", false )
    return
}


;===============================================
;========== basic operation define =============
;===============================================

command_operation( name , command , autoselect )
{
    last_is_in_mode := isInMode()
    ;addLog( last_is_in_mode )

    if( autoselect == true )
    {
        selectCurrentLine()
    }

    monitor( "***  " . name )
    send %command%

    if( last_is_in_mode )
    {
        enterMoveMode()
    }
    else
    {
        enterEditMode()
    }
}

