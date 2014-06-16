$#j::    
    monitor( "***  " . "window.downscreen" )
    sendPlay +#{left}
    return

$#k::
    monitor( "***  " . "window.upscreen" )
    sendPlay +#{right}
    return

$#i::
    monitor( "***  " . "window.max" )
    sendPlay {alt down}{space}{alt up}{x}
    return

$#u::
    monitor( "***  " . "window.min" )
    sendPlay #{down}
    return

$#m::
    monitor( "***  " . "window.desktop" )
    sendPlay #d
    return
 
$+esc::
    monitor( "***  " . "window.close" )
    ;winminimize , a
    winclose, a
    return

;========

$#q::
    monitor( "***  " . "window.vim" )
    
    content := getText()
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


