#Persistent
#SingleInstance, Force
SetTitleMatchMode, 2


#include main\map.ahk
#include main\doubleClickChecker.ahk

#include main\statistic.ahk
#include main\logger.ahk

monitor( name )
{
    addStatistic( name )
    addLog( name )
}

#include main\state_ui.ahk
#include main\state.ahk

#include editText\move_command.ahk
#include editText\operator_command.ahk
#include editText\pair_command.ahk

#include editText\move.ahk
#include editText\edit.ahk

#include application\windows.ahk
#include application\onenote.ahk
;#include application\evernote.ahk

#include application\officeCommand.ahk
#include application\onenoteEditing.ahk
#include application\officeEditing.ahk
#include application\evernoteEditing.ahk

SetCapsLockState, Off

return

$^!\::
    Suspend, Toggle
    SetCapsLockState, Off
    return

view_statistic:
    popupStatistic()
    return

view_log:
    popupLog()
    return

clear_log:
    initLogData()
    return

