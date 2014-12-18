$#j::    
    monitor( "***  " . "window.downscreen" )
    send +#{left}
    return

$#k::
    monitor( "***  " . "window.upscreen" )
    send +#{right}
    return

$#o::
    monitor( "***  " . "window.max" )
    send {alt down}{space}{alt up}{x}
    return

$#i::
    monitor( "***  " . "window.right" )
    send #{right}
    return

$#u::
    monitor( "***  " . "window.left" )
    send #{left}
    return

$#m::
    monitor( "***  " . "window.desktop" )
    send #d
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

