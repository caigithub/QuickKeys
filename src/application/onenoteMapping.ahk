#IfWinActive , OneNote
    ;== { formatting
        $!f::
            onenoteFormatsClear()
            return 

        $^=::
        $!=::
            fontIncrease()
            return

        $^-::
        $!-::
            FontDecrease()
            return

        $^h::
        $!h::
            highlight()
            return

        $^b::
        $!b::
            bold()
            return 

        $^u::
        $!u::
            underline()
            return

        $^l::
        $!l::
            strikethrough()
            return

        $Tab::
            ;indent in
            send !+{right}
            return

        $+Tab::
            ;indent out
            send !+{left}
            return
    ;== }

    ;== { windows 
        $^+o::
        $^o::
        $^!F3::
            ;search
            Send ^{e}
            return 

        $F12::
            ;full screen
            Send ^!{d}
            return

        $^Tab::
            ;last modify page
            send !{left}
            return

        $^m::
            ;move page
            Send ^!{m}
            return

        $!`::
        $!1::
            ;note list
            Send ^{g}{tab 4}
            return

        $!Down::
            ;page previous
            send ^{PGDN}
            return

        $!Up::
            ;page next
            send ^{PGUP}
            return
    ;== }

    ;== { style
        $^t::
        $!t::
            send {home}+{end}
            onenoteFormatsClear()
            titleCurrentLine()
            return

        $F6::
            onenoteFormatCommand("^6")
            return

        $F7::
            onenoteFormatCommand("^7")
            return

        $F8::
            onenoteFormatCommand("^8")
            return

        $F9::
            onenoteFormatCommand("^9")
            return
    ;== }

    ;== { editing
        $F2::
            send ^+{t}
            return
    ;== }
#If

onenoteFormatCommand( key )
{
    Send ^0
    send %key%
    return
}

onenoteFormatsClear()
{
    Send ^0
    Send ^+{n}
    return
}

