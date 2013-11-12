last_click_records := {}

isDoubleClick( name )
{
    global last_click_records

    if( map_hasKey( last_click_records, name) == true ) 
    {
        ElapsedTime := A_TickCount - last_click_records[name]
        last_click_records[name] := A_TickCount
        if( ElapsedTime < 200 )
        {
            return true
        }
        else
        {
            return false
        }        
    }
    else
    {
         last_click_records[name] := A_TickCount
         return false
    }
}
