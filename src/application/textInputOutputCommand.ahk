getText()
{
    oldContent := clipboardAll
    clipboard := ""
    
    send ^c
    clipwait, 0.3
    newContent := clipboard

    clipboard := oldContent
    return %newContent%
}


outputText( content )
{
    old_clipboard := clipboardAll
    clipboard := content

    send ^v
    
    clipboard := old_clipboard
    return
}

