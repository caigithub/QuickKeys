mode_name := "type"

isOperationMode()
{
    return isMoveMode() or isSelectMode()
}

;========= normal mode

enterMode( in_mode_name )
{
    global mode_name
    mode_name := in_mode_name

    updateTaskBar()
}

isMode( in_mode_name )
{
    global mode_name
    if( mode_name == in_mode_name )
    {
        return true
    }
    else
    {
        return false
    }
}

;========= normal mode
enterTypeMode()
{
    enterMode("type")
}

isTypeMode()
{
    return isMode("type")
}

;========= disable mode
enterEcsMode()
{
    enterMode("ecs")
}

isEcsMode()
{
    return isMode( "ecs")
}


;========= move mode
enterMoveMode()
{
    enterMode( "move")
}

isMoveMode()
{
    return isMode( "move")
}


;========== select mode
enterSelectMode()
{
    enterMode( "select" )
}

isSelectMode()
{
    return isMode( "select" )
}
