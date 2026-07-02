
feature_last_operation := "last_operation"

setLastOperation( operation_name ) {
    global feature_last_operation
    enterFeatureStatus(feature_last_operation, operation_name)
}

getLastOperationTime() {
    global feature_last_operation
    return getFeatureTime(feature_last_operation)
}

noLastOperationTime() {
    global feature_last_operation
    clearFeatureStatus(feature_last_operation)
}


noLastOperationTime()