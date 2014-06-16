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
            sendPlay ^+{z}
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
            sendPlay {F4}
            return
    ;== }
#If


