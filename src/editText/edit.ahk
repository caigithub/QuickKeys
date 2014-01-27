; ==== operator {
    #IF isInMode() 
        $e::
            del( true )
            return
            
        $t::
            send {right}^+{left}{del}
            return
        $r::
            backspace()
            return
        
        $a::selectCurrentDoc()
        $s::^s
        $d::del()
        $f::
            enterMoveMode()
            Send {left}{right}
            return

        $z::^z
        $x::cut()
        $c::copy()
        $v::paste()
    #IF

    ;#all mode
        $^e::
        $!e::
            del( true )
            return

        $!r::backspace()

        $^d::
        $!d::
            del()
            return

        $^v::paste()

        $!t::
            send {right}^+{left}{del}
            return
        
        $RAlt::
            Send {AppsKey}
            return
; ==== operator }

; ==== pair { 
    $+9::newBracket()
    $!9::newBracket()

    $+{::newCurveSquare()

    $[::newSquare()
    $![::
        if( isDoubleClick("line.begin.square") == false )
        {
            moveToLineBegin()
        }
        newSquare()
        return

    $+'::newQuato()
    $!'::newQuato( )

    $'::newSingleQuato()

    $!5::newVariable()
    $+5::newVariable()
        
; ==== pair }

; ==== text fixing {
	$+.::
        GetKeyState, state, LShift
        if state = D 
            send .
        else
            send >
        return

    $!.::
        send .
        return 

    $+,::
        GetKeyState, state, LShift
        if state = D 
            send {,}
        else
            newAngleSquare()
        return

    $`::
        send +{Tab}
        return

; ==== text fixing }


    

