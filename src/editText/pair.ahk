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

    $[::newSquare()
    $+[::newCurveSquare()
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


    $+,::newAngleSquare()

    $'::newSingleQuato()
    $+'::newQuato()
    $!'::newQuato( true )

    $!5::newVariable( true )
    $+5::newVariable()
        
    $!8::newStar( true )
    $+8::newStar()

; ==== pair }
