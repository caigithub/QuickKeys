handlerCreateFile( content )
{
    ws := getFolderPath()
    FileCreateDir, %ws%

    filepath := getFilePath()
    FileAppend, %content%, %filepath%
    Run %filepath%
}

getFolderPath()
{
    return "C:\workspace\GrabbedNotes" 
}

getFilePath()
{
    ws := getFolderPath()
    
    counter := 0
    FormatTime, timeString , , yyyy_MM_dd_HH_mm_ss
    fileName := ""

    loop
    {
        fileName := ws . "\" . timeString . "-" . counter . ".txt"
        if( FileExist( fileName ) )
        {
          counter += 1
        }
        else
        {
          return %fileName%
        }
    }
}

;============================================

handlerOpenInExplorer( content )
{
    Run explorer.exe ::{20D04FE0-3AEA-1069-A2D8-08002B30309D}
    return true
}

;============================================

handlerOpenInBrowser( content )
{
    Run http://www.baigoogledu.com/s.php?hl=zh-CN&q=%content%
}

;============================================


