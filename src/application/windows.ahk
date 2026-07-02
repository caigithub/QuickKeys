
ralt::SendInput {PrintScreen}
rctrl::RButton

XButton1::
    if( isDoubleClickLong( "mounse.top.buttom.jump" ) )
    {
        moveToDocBegin()
    }
    else
    {
        moveToDocEnd()
    }
    return
