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
            $^o::
            $^!F3::
                ; search
                send {f6}
                return 

            $F12::
            $!`::
            $!1::
                send {f11}
                return
    ;}

    ; === special {
            $Tab::
                send ^{m}
                return

            $+Tab::
                send ^+{m}
                return

            $^v::
                send ^+{v}
                return
    ;}
#If

