map_print( arr )
{
    For index, value in arr
        result := index . " = " . value . " , " . result

    Msgbox %result%
    return
}

map_hasKey( obj, k )
{
    For key, value in obj
    {
        if( k == key )
        {
            return true
        }
    }

    return false
}
