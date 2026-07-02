initFeature()
{
    menu, Info, add, ViewFeature, view_feature
    menu, tray, add, Information, :Info

    Gui, 13:Add, ListView, r20 w400, Feature|Status|Time
    Gui, 13:Default
        LV_ModifyCol(1, 100)
        LV_ModifyCol(2, 200)
        LV_ModifyCol(3, "190 Integer Left")

    return
}

popupFeature()
{
    global features_status

    Gui, 13:Default
        LV_Delete()
        For feature, status in  features_status
            LV_Add("", feature, status, getFeatureTime(feature) )
    Gui, 13:Show

    return
}

initFeature()
