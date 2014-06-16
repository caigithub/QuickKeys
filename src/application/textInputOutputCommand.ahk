getText()
{
    oldContent := clipboardAll
    clipboard := ""
    
    sendPlay ^c
    clipwait, 0.15
    newContent := clipboard

    clipboard := oldContent
    return %newContent%
}


outputText( content )
{
    old_clipboard := clipboardAll
    clipboard := content

    sendPlay ^v
    
    clipboard := old_clipboard
    return
}

