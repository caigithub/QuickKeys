;== { format command
        bold()
        {
            office_operation( "bold" , "^{b}" )
            return
        }

        strikethrough()
        {
            office_operation("strikethrough", "^-")
            return
        }
;== }

;== {
        titleCurrentLine()
        {
            office_operation( "title" , "^b^u" )
            return
        }
;== }

office_operation( name, key )
{
    monitor_command( "office.operation." . name )
    SendInput {home}+{end}
    SendInput %key%
    SendInput {end}
    return
}