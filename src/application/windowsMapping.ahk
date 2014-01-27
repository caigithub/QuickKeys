$#j::    
    monitor( "***  " . "window.downscreen" )
    send +#{left}
    return

$#k::
    monitor( "***  " . "window.upscreen" )
    send +#{right}#{up}
    return

$#i::
    monitor( "***  " . "window.max" )
    send #{up}
    return

$#u::
    monitor( "***  " . "window.min" )
    send #{down}
    return

$#m::
    monitor( "***  " . "window.desktop" )
    send #d
    return
 
+esc::
    monitor( "***  " . "window.close" )
    ;winminimize , a
    winclose, a
    return

;========

$#q::
    monitor( "***  " . "window.vim" )
    
    content := getText()
    if( StrLen(content) <= 0 )
    {
        return
    }

    handlerCreateFile( content )
    return

$#e::
    monitor( "***  " . "window.explore" )

    content := getText()
    if( handlerOpenInExplorer( content ) == true )
    {
        return
    }

    handlerOpenInBrowser( content )
    return

;========


