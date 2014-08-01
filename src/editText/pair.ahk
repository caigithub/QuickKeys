; ==== pair { 
    $+9::newBracket()
    $!9::
       if( isDoubleClick( "pair.bracket" ) )
        {
            expandPair()    
        }
        else
        {
            newBracket( true )
        }
        return


    $+{::newCurveSquare()
    $![::
        if( isDoubleClick( "pair.curveSquare" ) )
        {
            expandPair()    
        }
        else
        {
            moveToLineEnd()
            newCurveSquare(true)
        }

        return

    $[::newSquare()

    $+'::newQuato()
    $!'::newQuato( true )

    $'::newSingleQuato()

    $!5::newVariable( true )
    $+5::newVariable()
        
    $!8::newStar( true )
    $+8::newStar()

; ==== pair }
