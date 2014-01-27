;=======================================
; word
;=======================================
#IfWinActive , - Word
    ;== { 
        $^=::
            fontIncrease()
            return

        $^-::
            FontDecrease()
            return

        $^h::
            highlight()
            return

        $^b::
            bold()
            return
    ;== }
#If

;=======================================
; outlook
;=======================================
#IfWinActive , - Message (
    ;== { formatting
         $!f::
            ; clear format
            send ^+{z}
            return

        $^=::
            fontIncrease()
            return

        $^-::
            FontDecrease()
            return

        $^h::
            highlight()
            return

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
            send {F4}
            return
    ;== }
#If


