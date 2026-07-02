newBracket( expend_now = false)
{
    new_pair_operation( "new.()" , "(" , ")" , expend_now)
    return
}

newSquare( expend_now = false)
{
    new_pair_operation("new.[]", "[", "]" , expend_now  )
    return
}

newCurveSquare( expend_now = false)
{
    new_pair_operation("new.{}", "{{}", "{}}" , expend_now  )
    return
}

newQuato( expend_now = false)
{
    new_pair_operation("new.""" , """","""" , expend_now  )
    return
}

newSingleQuato( expend_now = false)
{
    new_pair_operation("new.''", "`'" , "`'"  , expend_now )
    return
}

newAngleSquare( expend_now = false)
{
    new_pair_operation("new.<>", "<" , ">" , expend_now  )
    return
}

newVariable( expend_now = false, expand_at_line_end = false )
{
    new_pair_operation("new.%%" , "`%" , "`%"  , expend_now )
    return
}

newStar( expend_now = false)
{
    new_pair_operation("new.%%" , "*" , "*" , expend_now  )
    return
}

;===============================================
;========== basic operation define =============
;===============================================


new_pair_operation(name, begin_char, end_char, expand_now )
{
    monitor_command(name)

    if( expand_now )
    {
        SendInput %begin_char%%end_char%{left}

        enterTypeMode()
        updateLockNotify()

        return
    }

    if( isDoubleClick(name) )
    {
        SendInput %end_char%
        SendInput {left}

        enterTypeMode()
        updateLockNotify()
    }
    else
    {
        SendInput %begin_char%
    }
}
