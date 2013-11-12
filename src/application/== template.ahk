#IfWinActive , - Evernote
   ;=== editing {
            $!f::
                ;FormatsClear()
                return 

            $^=::
                line_operation("fontIncrease" , "^+{>}" )
                return

            $^-::
                line_operation("fontDecrease" , "^+{<}" )
                return

            $^h::
                line_operation("highlight" , "^+{h}" )
                return

            $^b::
                line_operation("bold" , "^{b}" )
                return 

            $^u::
                ;underline()
                return
    ;}

    ;=== tag {
            $^t::
            $!t::
                ;LineFormatAsTitle()
                return

            $F6::
                line_operation("markAsRemove" , "^{t}" )
                return

            $F7::
                ; markAsTodo()
                return

            $F8::
                ; markAsQuestion()
                return

            $F9::
                ; markAsBlock()
                return
    ;}

    ;=== windows {
            $^o::
            $^!F3::
                ; search
                send {f6}
                return 

            $F12::
                ; full windows
                send {f11}{f10}
                return

            $^Tab::
                ;last visit
                return
         
            $!`::
            $!1::
                ; notes list
                return

            $!Down::
                ; next note
                return

            $!Up::
                ; previous note
                return
    ;}

    ; === special {
    ;}
#If

