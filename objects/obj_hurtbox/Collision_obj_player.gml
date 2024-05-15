with (other.id)
{
    if ((state == states.knightpep || state == states.knightpepattack || state == states.knightpepslopes || state == states.debugstate) && cutscene == 0)
    {
    }
    else if (state == states.bombpep && hurted == 0)
    {
    }
    else if (state == states.boxxedpep)
    {
    }
    else if (state == states.tumble)
    {
    }
    else if (state == states.cheesepep || state == states.cheesepepstick)
    {
    }
    else if (state != states.hurt && hurted == 0 && cutscene == 0 && state != states.bump)
    {
        scr_soundeffect(sfx_pephurt)
        alarm[8] = 60
        alarm[7] = 120
        hurted = 1
        if (xscale == other.image_xscale)
            sprite_index = spr_hurtjump
        else
            sprite_index = spr_hurt
        movespeed = 8
        vsp = -5
        timeuntilhpback = 300
        instance_create(x, y, obj_spikehurteffect)
        state = states.hurt
        image_index = 0
        flash = 1
        if (character == "S" && global.collect == 0)
        {
            state = states.gameover
            sprite_index = spr_deathstart
        }
        if (shotgunAnim == 0 && character == "P")
        {
            global.hurtcounter += 1
            if (character == "P")
            {
                if (global.collect > 100)
                    global.collect -= 100
                else
                    global.collect = 0
            }
            if (global.collect != 0)
            {
                instance_create(x, y, obj_pizzaloss)
                instance_create(x, y, obj_pizzaloss)
                instance_create(x, y, obj_pizzaloss)
                instance_create(x, y, obj_pizzaloss)
                instance_create(x, y, obj_pizzaloss)
                instance_create(x, y, obj_pizzaloss)
                instance_create(x, y, obj_pizzaloss)
                instance_create(x, y, obj_pizzaloss)
                instance_create(x, y, obj_pizzaloss)
                instance_create(x, y, obj_pizzaloss)
                instance_create(x, y, obj_pizzaloss)
                instance_create(x, y, obj_pizzaloss)
            }
        }
        else if (character == "P")
        {
            with (instance_create(x, y, obj_sausageman_dead))
                sprite_index = spr_shotgunback
            if (backupweapon == 1)
                backupweapon = 0
            else
                shotgunAnim = 0
        }
        if (character == "S")
        {
            if (global.collect > 0)
            {
                global.collect = 0
                repeat (10)
                    instance_create(x, y, obj_pizzaloss)
            }
        }
    }
}
