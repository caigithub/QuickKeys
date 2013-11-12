newBracket()
{
    new_pair_operation( "new.()" , "(" , ")")
    return
}

newSquare()
{
    new_pair_operation("new.[]", "[", "]")
    return
}

newCurveSquare()
{
    new_pair_operation("new.{}", "{{}", "{}}")
    return
}

newQuato()
{
    new_pair_operation("new.""" , """","""" )
    return
}

newSingleQuato()
{
    new_pair_operation("new.''", "`'" , "`'")
    return
}

newAngleSquare()
{
    new_pair_operation("new.<>", "<" , ">")
    return
}

newVariable()
{
    new_pair_operation("new.%%" , "`%" , "`%")
    return
}

;===============================================
;========== basic operation define =============
;==============================================

new_pair_operation(name, operation1, operation2 )
{
    monitor( "***  " . name )
    if( isDoubleClick(name) )
    {
        send %operation2%
        send {left}
    }
    else
    {
        send %operation1%
    }
}
