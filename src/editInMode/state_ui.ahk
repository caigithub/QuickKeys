

;=================

updateTaskBar()
{
    if( isSelectMode() )
    {
        vimize( "Select" )
        return
    }

    if( isMoveMode() )
    {
        vimize("Move")
        return
    }

    unvimize()
}

updateLockNotify(  auto_close = true )
{
    if( isOperationMode() )
    {
        lockMoveNotify( auto_close )
        return
    }

    if( isEcsMode() )
    {
        lockEcsNotify( auto_close )
        return
    }

    lockITypeNotify( auto_close )
}
