;== { format command
        fontIncrease()
        {
            line_operation( "fontIncrease" , "^+{>}" )
                return
        }

        FontDecrease()
        {
            line_operation( "fontDecrease" , "^+{<}" )
                return
        }

        highlight()
        {
            monitor("**** highlight")
            sendPlay ^!{h}
            return
        }

        bold()
        {
            line_operation( "bold" , "^{b}" )
            return
        }

        underline()
        {
            line_operation( "underline" , "^{u}" )
            return
        }

        strikethrough()
        {
            line_operation("strikethrough", "^-")
            return
        }
;== }

;== {
        titleCurrentLine()
        {
            line_operation( "title" , "^b^u" )
            SendPlay ^b^u
            return
        }
;==
