vimize( message )
{
    Gui 3:Show, Minimize NoActivate, %message% ; Hide,
}

unvimize()
{
    Gui 3:Destroy
}

lockEditNotify()
{
    Gui 31:Destroy
    
    Gui 32:+LastFoundExist
    IfWinNotExist
    {
        Gui, 32:Add, Text,, Edit Mode
        Gui, 32:-SysMenu
        Gui, 32:-Caption
        Gui, 32:Color, 00FF00
        Gui, 32:+Border
        Gui, 32:+AlwaysOnTop
        Gui, 32:+ToolWindow
        Gui, 32:Show, AutoSize Center NoActivate
    }
    requestToCloseNotify()
}

lockMoveNotify()
{
    Gui, 32:Destroy
    Gui 3:Flash
    
    Gui 31:+LastFoundExist
    IfWinNotExist
    {
        Gui, 31:Add, Text,, Move Mode
        Gui, 31:-SysMenu
        Gui, 31:-Caption
        Gui, 31:Color, FFFF00
        Gui, 31:+Border
        Gui, 31:+AlwaysOnTop
        Gui, 31:+ToolWindow
        Gui, 31:Show, AutoSize Center NoActivate
    }
    requestToCloseNotify()
}

closeAllNotify()
{
    Gui, 32:Destroy
    Gui, 31:Destroy
}

requestToCloseNotify()
{
    SetTimer, action_closeAllNotify, 500
}

action_closeAllNotify:
SetTimer, action_closeAllNotify, Off
closeAllNotify()
return
