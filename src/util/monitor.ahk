monitor( name )
{
    setLastOperation( name )
    addStatistic( name )
    addLog( name )
}

monitor_ex( prefix, name, detail ) {
    result := ""

    if (prefix != "") {
        result .= prefix
    }

    if (name != "") {
        result .= name
    }

    if (detail != "") {
        if (result != "") {
            result .= " + "
        }
        result .= detail
    }

    if (result != "") {
        monitor( result )
    }
}

monitor_move(name, detail){
    monitor_ex( "        ", name , detail)
}


monitor_command(name){
    monitor_ex( "***     ", name , "")
}