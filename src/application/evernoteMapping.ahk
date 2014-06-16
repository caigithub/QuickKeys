#IfWinActive , - Evernote
   ;=== editing {
            $^=::
            $!=::
                line_operation("fontIncrease" , "^+{>}" )
                return

            $^-::
            $!-::
                line_operation("fontDecrease" , "^+{<}" )
                return

            $^h::
            $!h::
                line_operation("highlight" , "^+{h}" )
                return

            $^b::
            $!b::
                line_operation("bold" , "^{b}" )
                return 

            $^u::
            $!u::
                line_operation("underline" , "^{u}" )
                return

            $^v::
                sendPlay ^+{v}
                return

            $!f::
                content := getText()
                if( StrLen(content) <= 0 )
                {
                    sendPlay {home}+{end}
                    content := getText()
                }

                if( StrLen(content) <= 0 )
                {
                    return
                }

                outputText( content )
                return
    ;}

    ;=== tag {
            $^t::
            $!t::
                line_operation("markAsTitle" , "^{b}^{u}" )
                return

            $F6::
                line_operation("markAsRemove" , "^{t}" )
                return
    ;}

    ;=== windows {
            $^Tab::
                sendPlay !{left}
                return

            $^o::
            $^!F3::
                ; search
                sendPlay {f6}
                return 

            $!`::
            $!1::
                sendPlay {f11}{f10}^{f11}
                return

            $F12::
                sendPlay {f11}
                return
    ;}

    ; === special {
            $Tab::
                ;sendPlay {home}{space 4}{right 4} 
                sendPlay ^{m}
                return

            $`::
            $+Tab::
                ;sendPlay {home}{del 4}
                sendPlay ^+{m}
                return
    ;}
#If

