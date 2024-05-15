var _temp_local_var_2;
var _temp_local_var_2 = abs(vsp)
if (abs(vsp) <= 0)
{
}
else
{
    while (true)
    {
        if (!(place_meeting(x, (y + sign(vsp)), obj_null)))
        {
            y += sign(vsp)
            var _temp_local_var_2 = (abs(vsp) - 1)
            if (abs(vsp) - 1)
                continue
            break
        }
        else
            vsp = 0
    }
}
var _temp_local_var_2 = abs(hsp)
if (abs(hsp) <= 0)
{
}
else
{
    while (true)
    {
        if (place_meeting((x + sign(hsp)), y, obj_null) && place_meeting((x + sign(hsp)), (y - 1), obj_null) && (!(place_meeting((x + sign(hsp)), (y - 2), obj_null))))
            y -= 2
        else if (place_meeting((x + sign(hsp)), y, obj_null) && (!(place_meeting((x + sign(hsp)), (y - 1), obj_null))))
            y--
        if (!(place_meeting((x + sign(hsp)), y, obj_null)))
        {
            x += sign(hsp)
            var _temp_local_var_2 = (abs(hsp) - 1)
            if (abs(hsp) - 1)
                continue
            break
        }
        else
            hsp = 0
    }
}
if (vsp < 20)
    vsp += grav
