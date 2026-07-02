
feature_double_click := "double_click"

isDoubleClick( action ) {
    return isDoubleClickCheck(action, 200)
}

isDoubleClickLong( action ) {
    return isDoubleClickCheck(action, 1500)
}

isDoubleClickCheck( action , max_wait_time ) {
    global feature_double_click

    if( checkFeatureStatus(feature_double_click, action, max_wait_time ) ) {
        clearFeatureStatus(feature_double_click)
        return true
    }

    enterFeatureStatus(feature_double_click, action)
    return false
}

noDoubleClick() {
    global feature_double_click
    clearFeatureStatus(feature_double_click)
}


noDoubleClick()