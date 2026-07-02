#Persistent
#SingleInstance, Force
SetTitleMatchMode, 2

#include util\feature.ahk
#include util\featureDoubleClick.ahk
#include util\featureLastOperation.ahk

#include util\summary_feature.ahk
#include util\summary_statistic.ahk
#include util\summary_logger.ahk
#include util\monitor.ahk

#include editInMode\state_mode_list.ahk
#include editInMode\state_ui_task.ahk
#include editInMode\state_ui_notify.ahk
#include editInMode\state_ui.ahk

#include editInMode\move_command.ahk
#include editInMode\move_command_char.ahk
#include editInMode\move_command_word.ahk
#include editInMode\move_command_line.ahk
#include editInMode\move_command_doc.ahk

#include editInMode\operator_command.ahk
#include editInMode\operator_command_word.ahk
#include editInMode\operator_command_line.ahk

#include editInMode\state_mapping.ahk
#include editInMode\move_mapping.ahk
#include editInMode\select_mapping.ahk
#include editInMode\operator_mapping.ahk

#include editText\pair_command.ahk
#include editText\pair_mapping.ahk
#include editText\line_mapping.ahk
#include editText\Programmer.ahk

#include application\vim.ahk
#include application\windows.ahk

; #include application\textInputOutputCommand.ahk
; #include application\windowsCommand.ahk
; #include application\windowsMapping.ahk

; #include application\onenoteMain.ahk
; #include application\evernoteMain.ahk

; #include application\onenoteMapping.ahk
; #include application\evernoteMapping.ahk

#include application\officeCommand.ahk
#include application\officeMapping.ahk

return

view_feature:
    popupFeature()
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
