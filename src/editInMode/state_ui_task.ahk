vimize( message )
{
    Gui 3:Show, Minimize NoActivate, %message% ; Hide,
}

unvimize()
{
    Gui 3:Destroy
}

vimize_flash()
{
    Gui 3:Flash
}