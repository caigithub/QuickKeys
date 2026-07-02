initLog()
{
    menu, Info, add, ViewLog, view_log
    menu, Info, add, ClearLog, clear_log
    menu, tray, add, Information, :Info

    Gui, 11:Add, ListView, r20 w400, Index|Operation
    Gui, 11:Default
        LV_ModifyCol(1, 200)
        LV_ModifyCol(2, "190 Integer Left")

    initLogData()
    return
}

initLogData()
{
    global logs
    global last_log_index

    logs := {}
    last_log_index := 0
    return
}

popupLog()
{
    global logs
    Gui, 11:Default
        LV_Delete()
        For name, value in  logs
            LV_Insert(1, "", name, value )
    Gui, 11:Show
    return
}

addLog( name )
{
    global logs
    global last_log_index

    if( last_log_index >= 500 )
    {
        initLogData()
    }

    logs[last_log_index] := name
    last_log_index := last_log_index + 1
    return
}

last_log_index := 0
logs := {}
initLog()
