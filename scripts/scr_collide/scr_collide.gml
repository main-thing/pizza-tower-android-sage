function scr_collide()
{
	grounded = false
	if(!variable_instance_exists(id,"vsp_carry")){
		vsp_carry = 0
	}
	var vsp_final = (vsp + vsp_carry)
	vsp_carry = 0
	repeat abs(vsp_final)
	{
		if (!(scr_solid(x, (y + sign(vsp_final)))))
			y += sign(vsp_final)
		else
		{
			vsp = 0
			break
		}
	}
	if(!variable_instance_exists(id,"hsp_carry")){
		hsp_carry = 0
	}
	var hsp_final = (hsp + hsp_carry)
	hsp_carry = 0
	repeat abs(hsp_final)
	{
		var k = 1
		if (k <= 4)
		{
			if (scr_solid((x + sign(hsp_final)), y) && (!(scr_solid((x + sign(hsp_final)), (y - k)))))
				y -= k
			if ((!(scr_solid((x + sign(hsp_final)), y))) && (!(scr_solid((x + sign(hsp_final)), (y + 1)))) && scr_solid((x + sign(hsp_final)), (y + (k + 1))))
				y += k
			for (k++; k <= 4; k++)
			{
				if (scr_solid((x + sign(hsp_final)), y) && (!(scr_solid((x + sign(hsp_final)), (y - k)))))
					y -= k
				if ((!(scr_solid((x + sign(hsp_final)), y))) && (!(scr_solid((x + sign(hsp_final)), (y + 1)))) && scr_solid((x + sign(hsp_final)), (y + (k + 1))))
					y += k
			}
		}
		
		if (!(scr_solid((x + sign(hsp_final)), y)))
			x += sign(hsp_final)
		else
		{
			hsp = 0
			break
		}
	}
	if (vsp < 10)
		vsp += grav
	grounded |= scr_solid(x, (y + 1))
	grounded |= ((!(place_meeting(x, y, obj_platform))) && place_meeting(x, (y + 1), obj_platform))
}
