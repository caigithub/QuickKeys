initStatistic()
{
    menu, Info, add, ViewStatistic, view_statistic
    menu, tray, add, Information, :Info

    Gui, 2:Add, ListView, r20 w400, Name|Times
    Gui, 2:Default
    LV_ModifyCol(1, 200)  
    LV_ModifyCol(2, "190 Integer Left") 
    return
}

popupStatistic()
{
    global statistic
    Gui, 2:Default

    LV_Delete()   
    For name, value in  statistic
        LV_Add("", name, value )

    Gui, 2:Show
    return
}

addStatistic( name )
{
    global statistic

    if not statistic[name]
         statistic[name] := 0

     statistic[name] := statistic[name] + 1
    return
}


statistic := {}
initStatistic()
