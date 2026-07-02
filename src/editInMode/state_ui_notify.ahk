lockITypeNotify( auto_close = true )
{
    Gui 31:Destroy
    Gui 33:Destroy

    Gui 32:+LastFoundExist
    IfWinNotExist
    {
        Gui, 32:Add, Text,, Type
        Gui, 32:-SysMenu
        Gui, 32:-Caption
        Gui, 32:Color, 00FF00
        Gui, 32:+Border
        Gui, 32:+AlwaysOnTop
        Gui, 32:+ToolWindow
        Gui, 32:Show, AutoSize Center NoActivate
    }

    if ( auto_close ) {
        requestToCloseNotify()
    }
}

lockMoveNotify( auto_close = true )
{
    Gui, 32:Destroy
    Gui, 33:Destroy

    vimize_flash()

    Gui 31:+LastFoundExist
    IfWinNotExist
    {
        Gui, 31:Add, Text,, Move
        Gui, 31:-SysMenu
        Gui, 31:-Caption
        Gui, 31:Color, FFFF00
        Gui, 31:+Border
        Gui, 31:+AlwaysOnTop
        Gui, 31:+ToolWindow
        Gui, 31:Show, AutoSize Center NoActivate
    }

    if ( auto_close ) {
        requestToCloseNotify()
    }
}

lockEcsNotify( auto_close = true )
{
    Gui, 32:Destroy
    Gui, 31:Destroy

    Gui 33:+LastFoundExist
    IfWinNotExist
    {
        Gui, 33:Add, Text,, ESC
        Gui, 33:-SysMenu
        Gui, 33:-Caption
        Gui, 33:Color, ffffff
        Gui, 33:+Border
        Gui, 33:+AlwaysOnTop
        Gui, 33:+ToolWindow
        Gui, 33:Show, AutoSize Center NoActivate
    }

    if ( auto_close ) {
        requestToCloseNotify()
    }
}

closeAllNotify()
{
    Gui, 33:Destroy
    Gui, 32:Destroy
    Gui, 31:Destroy
}

requestToCloseNotify()
{
    SetTimer, action_closeAllNotify, 500
}
