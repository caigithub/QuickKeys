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

newStar( double = false )
{
    new_pair_operation("new.%%" , "*" , "*" , double )
    return
}

expandPair()
{
    monitor("*** pair.expand")

    sendPlay {enter}{enter}{up}{end}{Tab}
    return
}

;===============================================
;========== basic operation define =============
;===============================================

new_pair_operation(name, operation1, operation2, needDoubleClick )
{
    monitor( "***  " . name )

    if( needDoubleClick )
    {
        sendPlay %operation1%%operation2%{left}
        return
    }

    if( isDoubleClick(name) )
    {
        sendPlay %operation2%
        sendPlay {left}
    }
    else
    {
        sendPlay %operation1%
    }
}
