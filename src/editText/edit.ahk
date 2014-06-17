; ==== operator {
    #IF isInMode() 
        $e::
            del( true )
            return
            
        $t::
        $r::
            backspace()
            return
        
        $a::selectCurrentDoc()
        $s::^s
        $d::del()
        $f::
            enterMoveMode()
            sendPlay {left}{right}
            return

        $z::^z
        $x::cut()
        $c::copy()
        $v::paste()
    #IF

    ;#all mode
        $!e::
            del( true )
            return

        $!r::backspace()

        $^d::
        $!d::
            del()
            return

        $^v::paste()
        
        $RAlt::
            sendPlay {AppsKey}
            return
; ==== operator }

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
        
; ==== pair }

; ==== line begin / end operation {
    $+Enter::
    $!Enter::
        appendNewLine()
        return

    lineBeginOperation()
    {
        sendPlay {home}{delete}
    }

    lineEndOperation()
    { 
        sendPlay {end}{backspace}
    }
    
    $!w::
        lineEndoperation()
        return

    $!q::
        lineBeginOperation()
        return 

; ==== line begin / end operation }


; ==== text fixing {
	$+.::
        GetKeyState, state, LShift
        if state = D 
            sendPlay .
        else
            sendPlay >
        return

    $!.::
        sendPlay .
        return 

    $+,::
        GetKeyState, state, LShift
        if state = D 
            sendPlay {,}
        else
            newAngleSquare()
        return

    $!,::
        ;sendPlay {,}
        newAngleSquare( true ) 
        return

    $`::
        sendPlay +{Tab}
        return

; ==== text fixing }


    

