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

;#line operation { 
    insertNewLine()
    {
        command_operation("insert.new.line", "{home}{enter}{up}" )
        return
    }

    appendNewLine()
    {
        command_operation("append.new.line", "{end}{enter}" )
        return
    }

    deleteCurrentLine()
    {
        sendPlay {space}{home}+{end}{delete}{delete}
        return
    }
;#line operation }

;===============================================
;========== basic operation define =============
;===============================================

command_operation( name , command )
{
    last_is_in_mode := isInAnyMode()
    ;addLog( last_is_in_mode )

    monitor( "***  " . name )
    sendPlay %command%

    if( last_is_in_mode )
    {
        enterMoveMode()
    }
    else
    {
        enterEditMode()
    }
}

