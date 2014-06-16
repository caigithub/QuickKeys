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
            sendPlay !+{right}
            return

        $+Tab::
            ;indent out
            sendPlay !+{left}
            return
    ;== }

    ;== { windows 
        $^+o::
        $^o::
        $^!F3::
            ;search
            sendPlay {ESC}^{e}
            return 

        $F12::
            ;full screen
            sendPlay ^!{d}
            return

        $^Tab::
            ;last modify page
            sendPlay !{left}
            return

        $^m::
            ;move page
            sendPlay ^!{m}
            return

        $!`::
        $!1::
            ;note list
            sendPlay {esc}^{g}{tab 4}
            return

        $!Down::
            ;page previous
            sendPlay ^{PGDN}
            return

        $!Up::
            ;page next
            sendPlay ^{PGUP}
            return
    ;== }

    ;== { style
        $^t::
        $!t::
            sendPlay {home}+{end}
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
            sendPlay ^+{t}
            return
    ;== }
#If

onenoteFormatCommand( key )
{
    sendPlay ^0
    sendPlay %key%
    return
}

onenoteFormatsClear()
{
    sendPlay ^0
    sendPlay ^+{n}
    return
}

