#IF isInMode() 
    $e::
        del( true )
        return
        
    $r::^y

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
    
    $y::copy()
    $p::paste()
#IF

;#all mode
    $^e::
    $!e::
        del( true )
        return

    $^d::
    $!d::
        del()
        return

    $^y::copy()
    $^v::paste()
    $^p::paste()

    $RControl::
        selectCurrentWord()
        return
    
    $RAlt::
        Send {AppsKey}
        return

    $+;::
        GetKeyState, state, LShift
        if state = D 
            if( isDoubleClick("new.program.end") )
            {
                send {enter}
            }
            else
            {
                send {end}`;
            }
        else
            send :
        return

    $+.::
        GetKeyState, state, LShift
        if state = D 
            send .
        else
            send >
        return 

    $+,::
        GetKeyState, state, LShift
        if state = D 
            send {,}
        else
            newAngleSquare()
        return 

    $+9::newBracket()
    $+{::newCurveSquare()
    $[::newSquare()
    $+'::newQuato()
    $'::newSingleQuato()
    $+5::newVariable()

    $+Enter::insertNewLine()
    $!Enter::appendNewLine()

    $+Backspace::
    $!Backspace::
    $^Backspace::
        moveToLineEnd()
        send {Backspace}
        return

    $+Delete::
    $!Delete::
    $^Delete::
        moveToLineBegin()
        del()
        return 

;#all mode
    

