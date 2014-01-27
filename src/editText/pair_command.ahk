newBracket( double = false )
{
    new_pair_operation( "new.()" , "(" , ")" , double )
    return
}

newSquare( double = false )
{
    new_pair_operation("new.[]", "[", "] {left}" , double )
    return
}

newCurveSquare( double = false )
{
    new_pair_operation("new.{}", "{{}", "{}}" , double )
    return
}

newQuato( double = false )
{
    new_pair_operation("new.""" , """","""" , double )
    return
}

newSingleQuato( double = false )
{
    new_pair_operation("new.''", "`'" , "`'" , double )
    return
}

newAngleSquare( double = false )
{
    new_pair_operation("new.<>", "<" , ">" , double )
    return
}

newVariable( double = false )
{
    new_pair_operation("new.%%" , "`%" , "`%" , double )
    return
}

;===============================================
;========== basic operation define =============
;==============================================

new_pair_operation(name, operation1, operation2, needDoubleClick )
{
    monitor( "***  " . name )

    if( needDoubleClick )
    {
        send %operation1%%operation2%{left}
        return
    }

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
