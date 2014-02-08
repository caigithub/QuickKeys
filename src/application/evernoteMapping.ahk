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


            $!f::
                content := getText()
                if( StrLen(content) <= 0 )
                {
                    send {home}+{end}
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
                send !{left}
                return

            $^o::
            $^!F3::
                ; search
                send {f6}
                return 

            $!`::
            $!1::
                send {f11}{f10}
                return

            $F12::
                send {f11}
                return
    ;}

    ; === special {
            $Tab::
                ;send {home}{space 4}{right 4} 
                send ^{m}
                return

            $`::
            $+Tab::
                ;send {home}{del 4}
                send ^+{m}
                return
    ;}
#If

