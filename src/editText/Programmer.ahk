
program_operation( name, key )
{
    noDoubleClick()
    monitor_command("programmer.operation." . name)
    SendInput %key%
}

program_line_end_operation( key )
{
    noDoubleClick()
    monitor_command("programmer.operation.line_end." . key)
    moveToLineEnd()
    SendInput %key%
}

program_double_operation( key, double_key )
{
    monitor_command("programmer.operation." . key . " ==> " . double_key )
    if( isDoubleClick( "programmer.operation." . key . " ==> " . double_key ) ) {
        SendInput %double_key%
    } else {
        SendInput %key%
    }
}

; ==== text fixing
    $`::
        program_operation("indent.out", "+{Tab}"  )
        return

    $+Tab::
        program_operation("indent.int", "{home}{Tab}"  )
        return

    $^j::
        program_operation("join.line", "{end}{delete}"  )
        return

; ==== swap text
;    $-::
;        program_double_operation("{-}", "{backspace}{_}")
;        return

; ==== line end append, !=alt

    $!,::
        program_line_end_operation("{,}")
        return

    $!;::
        program_line_end_operation("{`;}")
        return

    $!0::
        program_line_end_operation("{)}")
        return

;# ==== seprator
    $^-::
        noDoubleClick()
        SendInput ------------------
        return

    $^=::
        noDoubleClick()
        SendInput {=}=================
        return
