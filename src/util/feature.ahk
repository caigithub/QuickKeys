
checkFeatureStatus( feature_name, status, max_wait_time )
{
    global features_status
    global features_time

    last_status_name := features_status[feature_name]
    last_status_time := features_time[feature_name]

    ElapsedTime := A_TickCount - last_status_time
    if( last_status_name == status ) and ( ElapsedTime < max_wait_time ) {
        return true
    }

    return false
}

enterFeatureStatus(feature_name, status)
{
    setFeatureStatus(feature_name, status, A_TickCount)
}

clearFeatureStatus(feature_name)
{
    setFeatureStatus(feature_name, "", 0)
}

; ==================

setFeatureStatus(feature_name, status, time){
    global features_status
    features_status[feature_name] := status

    global features_time
    features_time[feature_name] := time
}

getFeatureStatus(feature_name){
    global features_status
    return features_status[feature_name]
}

getFeatureTime(feature_name){
    global features_time
    return features_time[feature_name]
}

features_status := {}
features_time := {}
