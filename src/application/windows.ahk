
;=======

$#end::
    send {home}+{end}1qa2ws`%TG
    return

;========

+esc::
    ;winminimize , a
    winclose, a
    return

;========

$#f1::
    ; checkin notes
    contentFormat( "Problem" )
    contentFormat( "Root Cause" )
    contentFormat( "Solution" )
    contentFormat( "Review Link" )
    return

$#f2::
    ; remedy root cause analysis notes
    contentFormat( "root cause summary" )
    contentFormat( "affected modules(optional)" )
    contentFormat( "resolution" )
    return

contentFormat(title) 
{
    send %title%
    send {space}:{space}{enter}{space 4}{enter}
    return
}
