
;=======================================
; outlook
;=======================================
#IfWinActive , - Message (
    ;== { formatting
        $^b::
            bold()
            return
    ;== }

    ;== { other
        $^t::
        $!t::
            titleCurrentLine()
            return

       $^f::
            sendPlay {F4}
            return
    ;== }
#If


