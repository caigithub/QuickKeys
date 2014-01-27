   $!,::
        send {,}
        return 

    $!;::
        monitor( "***  " . "pro.line.end" )
        if( isDoubleClick("new.program.end") )
        {
            send {enter}
        }
        else
        {
            send {end}`;
        }

        return

; ==== line begin / end operation {
    $!/::
        monitor( "***  " . "pro.line.commont" )
        send {home}//
        return

    $+Enter::insertNewLine()
    $!Enter::appendNewLine()

    lineBeginOperation()
    {
        monitor( "        " . "pro.line.begin.char.delete" )
        send {home}{delete}
        return
    }

    lineEndOperation()
    {
        monitor( "        " . "pro.line.end.char.delete" )
        send {end}{backspace}
    }

    $!w::
        lineEndOperation()
        return

    $!q::
        lineBeginOperation()
        return 

    #IF isInMode() 
        $w::
            lineEndOperation()
            return

        $q::
            lineBeginOperation()
            return 
    #IF
; ==== line begin / end operation }


