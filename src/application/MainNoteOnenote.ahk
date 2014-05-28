    activeOnenote()
    {
        WinActivate , OneNote
        WinWaitActive , OneNote,,10
        return
    }

    miniOnenote()
    {
        WinMinimize 
        return
    }

    createOnenote()
    {
        send #+{n}
        activeOnenote()
        return
    }

;=====================================
;== onenote open and hide {
    openOnenote()
    {
        IfWinExist , OneNote
        {
            IfWinActive , OneNote
            {   
                return
            }
            else
            {
                activeOnenote()
                return
            }
        }
        else
        {
            createOnenote()
            return
        }

        return
    }

    toggleOpenOnenote()
    {
        IfWinExist , OneNote
        {
            IfWinActive , OneNote
            {
                miniOnenote()   
                return
            }
            else
            {
                activeOnenote()
                return
            }
        }
        else
        {
            createOnenote()
            return
        }

        return
    }
;== }

;=====================================
;======= copy and paste { 

    ContentCopy()
    {
        copy()

            ClipWait, 0.5
            if ( ErrorLevel == 0 )
            {
                return true
            }
            else
            {
                return false
            }
    }

    ContentPasteAtBegin()
    {
        sendPlay ^+t
        sendPlay {tab}
        paste()        
    }

    ContentPasteAtEnd()
    {
        sendPlay {enter}^{end}{enter}{enter}
        paste()
    }
;======= } 

$^!p::
    if( ContentCopy() == true )
    {
        WinGet, style, MinMax,OneNote
        if( style <> -1 )
        {
               IfWinNotActive , OneNote
               {
                    openOnenote()
               }

               ContentPasteAtEnd()
        }
        else
        {
            openOnenote()

            send ^n
            send {delete}
            
            ContentPasteAtBegin()

            send !{left}
            toggleOpenOnenote()
        }

        return
    }

$^!n::
    openOnenote()
    send ^{n}{Tab}
    return

$^!m::
    toggleOpenOnenote() 
    return

$^+o::
$^!o::
    openOnenote()
    send ^{e}
    return
