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

#include editInMode\state_ui.ahk
#include editInMode\state.ahk
#include editInMode\move_command.ahk
#include editInMode\operator_command.ahk
#include editInMode\move.ahk
#include editInMode\operator.ahk

#include editText\pair_command.ahk
#include editText\line.ahk
#include editText\pair.ahk

#include application\textInputOutputCommand.ahk
#include application\Programmer.ahk

#include application\windowsCommand.ahk
#include application\windowsMapping.ahk

#include application\MainNoteOnenote.ahk
;#include application\MainNoteEvernote.ahk

#include application\onenoteMapping.ahk
#include application\evernoteMapping.ahk

#include application\officeCommand.ahk
#include application\officeMapping.ahk

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

action_closeAllNotify:
    SetTimer, action_closeAllNotify, Off
    closeAllNotify()
    return
