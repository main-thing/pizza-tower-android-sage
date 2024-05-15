if (!instance_exists(baddieID))
    instance_destroy()
if instance_exists(baddieID)
{
    x = baddieID.x
    y = baddieID.y
    image_xscale = baddieID.image_xscale
}
if (instance_exists(baddieID) && place_meeting(x, y, obj_player1) && obj_player1.cutscene == 0 && obj_player1.state != states.firemouth)
{
    if (baddieID.state != states.grabbed)
    {
        with (obj_player1)
        {
            if (instakillmove == 1)
            {
                if (state == states.mach3 && sprite_index != spr_mach3hit)
                {
                    sprite_index = spr_mach3hit
                    image_index = 0
                }
                if (state == states.mach2 && grounded)
                {
                    machpunchAnim = 1
                    image_index = 0
                }
                scr_soundeffect(sfx_punch)
                instance_destroy(other.baddieID)
                instance_destroy(other.id)
                global.hit += 1
                global.combotime = 60
                if ((!grounded) && state != states.freefall && key_jump2)
                {
                    if (state == states.mach2 || state == states.mach3)
                        sprite_index = spr_mach2jump
                    suplexmove = 0
                    vsp = -11
                }
            }
            if (instance_exists(other.baddieID) && y < other.baddieID.y && attacking == 0 && sprite_index != spr_player_mach2jump && (state == states.jump || state == states.mach1 || state == states.grab) && vsp > 0 && other.baddieID.vsp >= 0 && sprite_index != spr_stompprep)
            {
                scr_soundeffect(sfx_stompenemy)
                if (x != other.baddieID.x)
                    other.baddieID.image_xscale = (-(sign((other.baddieID.x - x))))
                image_index = 0
                other.baddieID.state = states.stun
                if (other.baddieID.stunned < 100)
                    other.baddieID.stunned = 100
                if key_jump2
                {
                    instance_create(x, (y + 50), obj_stompeffect)
                    stompAnim = 1
                    other.baddieID.image_index = 0
                    vsp = -14
                    if (state != states.grab)
                        sprite_index = spr_stompprep
                }
                else
                {
                    instance_create(x, (y + 50), obj_stompeffect)
                    stompAnim = 1
                    other.baddieID.image_index = 0
                    vsp = -9
                    if (state != states.grab)
                        sprite_index = spr_stompprep
                }
            }
            if (instance_exists(other.baddieID) && other.baddieID.state != states.throwing && other.baddieID.vsp > 0 && state != states.tackle && state != states.superslam && state != states.machslide && state != states.freefall && state != states.mach2 && state != states.handstandjump)
            {
                scr_soundeffect(sfx_bumpwall)
                if (state != states.bombpep && state != states.mach1)
                    movespeed = 0
                if (other.baddieID.object_index == obj_pizzaball)
                    global.golfhit += 1
                if (other.baddieID.stunned < 100)
                    other.baddieID.stunned = 100
                if (x != other.baddieID.x)
                    other.baddieID.image_xscale = (-(sign((other.baddieID.x - x))))
                other.baddieID.vsp = -5
                other.baddieID.hsp = ((-other.baddieID.image_xscale) * 2)
                other.baddieID.state = states.stun
                other.baddieID.image_index = 0
            }
            if (instance_exists(other.baddieID) && (state == states.superslam || state == states.freefall))
            {
                scr_soundeffect(sfx_hitenemy)
                global.combotime = 60
                instance_create(other.baddieID.x, other.baddieID.y, obj_baddiegibs)
                other.baddieID.flash = 1
                other.baddieID.state = states.stun
                other.baddieID.hp -= 1
                if (other.baddieID.stunned < 100)
                    other.baddieID.stunned = 100
                instance_create(x, y, obj_bumpeffect)
                instance_create(other.baddieID.x, other.baddieID.y, obj_bangeffect)
                if (other.baddieID.hp <= 0)
                {
                    other.baddieID.stunned = 200
                    other.baddieID.state = states.stun
                }
                vsp = -7
                state = states.normal
                other.baddieID.vsp = -4
                other.baddieID.hsp = (xscale * 5)
            }
            if (instance_exists(other.baddieID) && state == states.handstandjump && character == "P")
            {
                if (shotgunAnim == 0)
                {
                    movespeed = 0
                    image_index = 0
                    sprite_index = spr_player_haulingstart
                    state = states.grab
                    other.baddieID.state = states.grabbed
                }
                else
                {
                    state = states.shotgun
                    with (instance_create(x, y, obj_pistoleffect))
                        image_xscale = other.image_xscale
                    image_index = 0
                    sprite_index = spr_player_shotgun
                    instance_create((x + (image_xscale * 20)), (y + 20), obj_shotgunbullet)
                    with (instance_create((x + (image_xscale * 20)), (y + 20), obj_shotgunbullet))
                        spdh = 4
                    with (instance_create((x + (image_xscale * 20)), (y + 20), obj_shotgunbullet))
                        spdh = -4
                    instance_destroy(other.baddieID)
                    instance_destroy(other.id)
                    global.hit += 1
                    global.combotime = 60
                }
            }
        }
    }
}
if (instance_exists(baddieID) && place_meeting(x, y, obj_player2) && obj_player2.cutscene == 0 && obj_player2.state != states.firemouth)
{
    if (baddieID.state != states.grabbed)
    {
        with (obj_player2)
        {
            if (instakillmove == 1 && other.baddieID.object_index != obj_pizzaball)
            {
                instance_destroy(other.baddieID)
                instance_destroy(other.id)
                global.hit += 1
                global.combotime = 60
                if ((!grounded) && state != states.freefall && key_jump2)
                {
                    suplexmove = 0
                    vsp = -11
                }
            }
            if (instance_exists(other.baddieID) && y < other.baddieID.y && attacking == 0 && sprite_index != spr_player_mach2jump && (state == states.jump || state == states.grab || state == states.mach1) && vsp > 0 && other.baddieID.vsp >= 0 && sprite_index != spr_stompprep)
            {
                scr_soundeffect(sfx_stompenemy)
                if (x != other.baddieID.x)
                    other.baddieID.image_xscale = (-(sign((other.baddieID.x - x))))
                image_index = 0
                other.baddieID.state = states.stun
                if (other.baddieID.stunned < 100)
                    other.baddieID.stunned = 100
                if key_jump2
                {
                    other.baddieID.vsp = -5
                    instance_create(x, (y + 50), obj_stompeffect)
                    other.baddieID.state = states.walk
                    stompAnim = 1
                    other.baddieID.image_index = 0
                    vsp = -14
                    if (state != states.grab)
                        sprite_index = spr_stompprep
                }
                else
                {
                    other.baddieID.vsp = -5
                    instance_create(x, (y + 50), obj_stompeffect)
                    stompAnim = 1
                    other.baddieID.image_index = 0
                    vsp = -9
                    if (state != states.grab)
                        sprite_index = spr_stompprep
                }
            }
            if (instance_exists(other.baddieID) && other.baddieID.vsp > 0 && state != states.tackle && state != states.tackle && state != states.superslam && state != states.machslide && state != states.freefall && state != states.mach2 && state != states.handstandjump)
            {
                scr_soundeffect(sfx_bumpwall)
                if (state != states.mach1)
                    movespeed = 0
                if (other.baddieID.object_index == obj_pizzaball)
                    global.golfhit += 1
                if (other.baddieID.stunned < 30)
                    other.baddieID.stunned = 30
                if (x != other.baddieID.x)
                    other.baddieID.image_xscale = (-(sign((other.baddieID.x - x))))
                other.baddieID.vsp = -5
                other.baddieID.hsp = ((-other.baddieID.image_xscale) * 2)
                other.baddieID.state = states.stun
                other.baddieID.image_index = 0
            }
            if (instance_exists(other.baddieID) && (state == states.superslam || state == states.freefall))
            {
                global.combotime = 60
                instance_create(other.baddieID.x, other.baddieID.y, obj_baddiegibs)
                other.baddieID.flash = 1
                other.baddieID.state = states.stun
                other.baddieID.hp -= 1
                if (other.baddieID.stunned < 100)
                    other.baddieID.stunned = 100
                instance_create(x, y, obj_bumpeffect)
                instance_create(other.baddieID.x, other.baddieID.y, obj_bangeffect)
                if (other.baddieID.hp <= 0)
                {
                    other.baddieID.stunned = 200
                    other.baddieID.state = states.stun
                }
                vsp = -7
                state = states.normal
                other.baddieID.vsp = -4
                other.baddieID.hsp = (xscale * 5)
            }
            if (instance_exists(other.baddieID) && (state == states.handstandjump || state == states.mach2) && (!((other.baddieID.state == states.stun && other.baddieID.stunned > 100))))
            {
                scr_soundeffect(sfx_hitenemy)
                scr_soundeffect(sfx_machpunch)
                if (other.baddieID.object_index == obj_pizzaball)
                    global.golfhit += 1
                global.hit += 1
                global.combotime = 60
                instance_create(other.baddieID.x, other.baddieID.y, obj_slapstar)
                instance_create(other.baddieID.x, other.baddieID.y, obj_baddiegibs)
                other.baddieID.flash = 1
                other.baddieID.state = states.stun
                other.baddieID.hp -= 1
                if (other.baddieID.stunned < 100)
                    other.baddieID.stunned = 100
                instance_create(x, y, obj_bumpeffect)
                instance_create(other.baddieID.x, other.baddieID.y, obj_bangeffect)
                movespeed = 3
                vsp = -3
                other.baddieID.vsp = -4
                other.baddieID.hsp = (xscale * 5)
                machpunchAnim = 1
                if (other.baddieID.hp <= 0)
                {
                    other.baddieID.stunned = 200
                    other.baddieID.state = states.stun
                }
                image_index = 0
                state = states.tackle
                sprite_index = choose(spr_player_suplexmash1, spr_player_suplexmash2, spr_player_suplexmash3, spr_player_suplexmash4, spr_player_suplexmash5, spr_player_suplexmash6, spr_player_suplexmash7)
            }
            if (instance_exists(other.baddieID) && (state == states.handstandjump || state == states.mach2) && other.baddieID.state == states.stun && other.baddieID.stunned > 100)
            {
                movespeed = 0
                image_index = 0
                sprite_index = spr_player_haulingstart
                state = states.grab
                other.baddieID.state = states.grabbed
            }
        }
    }
}
