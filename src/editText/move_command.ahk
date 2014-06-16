;========== char ===========
moveToNextChar()
{
    move_operation("char.move.right" , "{right}") 
    return
}

moveToPreviousChar()
{
    move_operation("char.move.left", "{left}" )  
    return
}

selectToNextChar()
{
    select_operation("char.select.right", "+{right}" )  
    return
}

selectToPreviousChar()
{
    select_operation("char.select.left", "+{left}" )  
    return
}

;========== word ===========

moveToNextWord()
{
    move_operation("word.move.right", "^{right}" )  
    return
}

selectToNextWord()
{
    select_operation("word.select.right", "+^{right}" )
    return
}


selectCurrentWord()
{
    select_operation("word.select.current", "^{right}^{left}+^{right}" )
    return
}

moveToPreviousWord()
{
    move_operation("word.move.left", "^{left}" )
    return
}

selectToPreviousWord()
{
    select_operation("word.select.left", "+^{left}" )
    return
}

;========== A word ===========

selectANextWord() 
{
    select_operation("word.select.a.right", "^{left}^{right}+^{right}" )
    return
} 

selectAPreviousWord() 
{
    select_operation("word.select.a.left", "^{right}^{left}+^{left}" )
    return
} 

;========== several word ===========

moveToNextSeveralWord()
{
    move_operation("word.move.several.right", "^{right 3}" )  
    return
}

selectToNextSeveralWord()
{
    select_operation("word.select.several.right", "+^{right 3}" )
    return
}

moveToPreviousSeveralWord()
{
    move_operation("word.move.several.left", "^{left 3}" )
    return
}

selectToPreviousSeveralWord()
{
    select_operation("word.select.several.left", "+^{left 3}" )
    return
}

;========== line ===========

selectToPreviousLine()
{
    select_operation("line.select.up", "+{up}" )
    return
}

selectToNextLine()
{
    select_operation("line.select.down", "+{down}" )
    return
}

moveToNextLine()
{
    move_operation("line.move.down",  "{down}" )
    return
}

moveToPreviousLine()
{
    move_operation("line.move.up", "{up}" )
    return
}

;====== several line ========

moveToNextSeveralLine()
{
    move_operation("m-line.move.down", "{down 5}" )
    return
}

moveToPreviousSeveralLine()
{
    move_operation("m-line.move.up", "{up 5}" )
    return
}

selectToNextSeveralLine()
{
    select_operation("m-line.select.down", "+{down 5}" )
    return
}

selectToPreviousSeveralLine()
{
    select_operation("m-line.select.up",  "+{up 5}" )
    return
}

;======== page ============
moveToPageBegin()
{
    move_operation("page.move.begin", "{PgUp}" )
    return
}

moveToPageEnd()
{
    move_operation("page.move.end", "{PgDn}" )
    return
}

selectToPageBegin()
{
    select_operation("page.select.begin", "{+PgUp}" )
    return
}

selectToPageEnd()
{
    select_operation("page.select.begin", "{+PgDn}" )
    return
}

;======== in the line ===========

moveToLineEnd()
{
    move_operation("line.move.end", "{end}" )
    return
}

moveToLineBegin()
{
    move_operation("line.move.begin", "{home}" ) 
    return
}

selectToLineEnd()
{
    select_operation("line.select.end", "+{end}" )
    return
}

selectToLineBegin()
{
    select_operation("line.select.begin", "+{home}" ) 
    return
}

selectCurrentLine()
{
    if( isSelectMode() )
    {
        select_operation("line.select.current", "+{home}+{end}" )
    }   
    else
    {
        select_operation("line.select.current", "{home}+{end}" )
    }

    return
}

;========== in the doc ==============
moveToDocBegin()
{
    move_operation("document.move.begin", "^{home}" ) 
    return
}

moveToDocEnd()
{
    move_operation("document.move.end",  "^{end}" ) 
    return
}

selectToDocBegin()
{
    select_operation("document.select.begin", "+^{home}" ) 
    return
}

selectToDocEnd()
{
    select_operation("document.move.end", "+^{end}" ) 
    return
}

selectCurrentDoc()
{
    select_operation("doc.select.all" , "^a")
}


;===============================================
;========== basic operation define =============
;==============================================

clearSelection()
{
    move_operation("select.clear", "{right}{left}")
}

move_operation( name,  key )
{

    IfWinActive , OneNote
    {
        monitor( "        [onenote] " . name )
        SendPlay %key%
        return
    }
    else
    {
        monitor( "        " . name )
        Send %key%
        return
    }
}

select_operation( name, key )
{
    move_operation( name , key )

    enterSelectMode()
    updateVimize()
}

line_operation( name, key )
{
    move_operation("line.operation.pre" , "{home}+{end}")
    move_operation( "line.operation.operator" . name , key )
    move_operation("line.operation.post" , "{end}")
}
