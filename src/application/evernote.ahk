    activeNote()
    {
        WinActivate , Evernote
        WinWaitActive , Evernote,,10
        return
    }

    miniNote()
    {
        WinMinimize 
        return
    }

    toggleNote()
    {
        IfWinActive , Evernote
        {
            miniNote()   
            return
        }
        else
        {
            activeNote()
            return
        }
    }
;== }

$^!m::
    toggleNote() 
    return
