scr_getinput2()
switch state
{
    case states.normal:
        scr_player_normal()
        break
    case 7:
        scr_player_titlescreen()
        break
    case 3:
        scr_player_ejected()
        break
    case 1:
        scr_player_tumble()
        break
    case 6:
        scr_player_firemouth()
        break
    case 5:
        scr_player_fireass()
        break
    case 4:
        scr_player_transitioncutscene()
        break
    case 8:
        scr_playerN_hookshot()
        break
    case 11:
        scr_player_slap()
        break
    case 9:
        scr_player_tacklecharge()
        break
    case 12:
        scr_player_cheesepep()
        break
    case 10:
        scr_player_cheeseball()
        break
    case 13:
        scr_player_cheesepepstick()
        break
    case 14:
        scr_player_boxxedpep()
        break
    case 15:
        scr_player_pistolaim()
        break
    case 16:
        scr_player_climbwall()
        break
    case 17:
        scr_player_knightpepslopes()
        break
    case 18:
        scr_player_portal()
        break
    case 19:
        scr_player_secondjump()
        break
    case 20:
        scr_player_chainsawbump()
        break
    case 21:
        scr_player_handstandjump()
        break
    case 22:
        scr_player_gottreasure()
        break
    case 23:
        scr_player_knightpep()
        break
    case 24:
        scr_player_knightpepattack()
        break
    case 25:
        scr_player_meteorpep()
        break
    case 26:
        scr_player_bombpep()
        break
    case 27:
        scr_player_grabbing()
        break
    case 28:
        scr_player_chainsawpogo()
        break
    case 29:
        scr_player_shotgunjump()
        break
    case 30:
        scr_player_stunned()
        break
    case 31:
        scr_player_highjump()
        break
    case 32:
        scr_player_chainsaw()
        break
    case 33:
        scr_player_facestomp()
        break
    case 35:
        scr_player_timesup()
        break
    case 36:
        scr_player_machroll()
        break
    case 38:
        scr_player_pistol()
        break
    case 37:
        scr_player_shotgun()
        break
    case 39:
        scr_player_machfreefall()
        break
    case 40:
        scr_player_throw()
        break
    case 42:
        scr_player_superslam()
        break
    case 41:
        scr_player_slam()
        break
    case 43:
        scr_player_skateboard()
        break
    case 44:
        scr_player_grind()
        break
    case 45:
        scr_player_grab()
        break
    case 46:
        scr_player_punch()
        break
    case 47:
        scr_player_backkick()
        break
    case 48:
        scr_player_uppunch()
        break
    case 49:
        scr_player_shoulder()
        break
    case 50:
        scr_player_backbreaker()
        break
    case 51:
        scr_player_bossdefeat()
        break
    case 53:
        scr_player_bossintro()
        break
    case 61:
        scr_player_smirk()
        break
    case 52:
        scr_player_pizzathrow()
        break
    case 54:
        scr_player_gameover()
        break
    case 91:
        scr_player_Sjumpland()
        break
    case 90:
        scr_player_freefallprep()
        break
    case 88:
        scr_player_runonball()
        break
    case 87:
        scr_player_boulder()
        break
    case 55:
        scr_player_keyget()
        break
    case 56:
        scr_player_tackle()
        break
    case 59:
        scr_player_slipnslide()
        break
    case 58:
        scr_player_ladder()
        break
    case 57:
        scr_player_jump()
        break
    case 63:
        scr_player_victory()
        break
    case 60:
        scr_player_comingoutdoor()
        break
    case 62:
        scr_player_Sjump()
        break
    case 64:
        scr_player_Sjumpprep()
        break
    case 65:
        scr_player_crouch()
        break
    case 66:
        scr_player_crouchjump()
        break
    case 67:
        scr_player_crouchslide()
        break
    case 68:
        scr_player_mach1()
        break
    case 69:
        scr_player_mach2()
        break
    case 89:
        scr_player_mach3()
        break
    case 70:
        scr_player_machslide()
        break
    case 71:
        scr_player_bump()
        break
    case 72:
        scr_player_hurt()
        break
    case 73:
        scr_player_freefall()
        break
    case 76:
        scr_player_freefallland()
        break
    case 74:
        scr_player_hang()
        break
    case 77:
        scr_player_door()
        break
    case 83:
        scr_player_barrelnormal()
        break
    case 82:
        scr_player_barrelfall()
        break
    case 81:
        scr_player_barrelmach1()
        break
    case 80:
        scr_player_barrelmach2()
        break
    case 79:
        scr_player_barrelfloat()
        break
    case 78:
        scr_player_barrelcrouch()
        break
    case 84:
        scr_player_barrelslipnslide()
        break
    case 85:
        scr_player_barrelroll()
        break
    case 86:
        scr_player_current()
        break
}

if grounded
    suplexmove = 0
if grinding
    state = states.grind
if (character == "P")
{
    if (anger == 0)
        angry = 0
    if (anger > 0)
    {
        angry = 1
        anger -= 1
    }
}
if (sprite_index == spr_player_winding && state != states.normal)
    windingAnim = 0
if (sprite_index == spr_player_idlevomit && image_index > 28 && image_index < 43)
    instance_create((x + random_range(-5, 5)), (y + 46), obj_vomit)
if (sprite_index == spr_player_idlevomitblood && image_index > 28 && image_index < 43)
{
    with (instance_create((x + random_range(-5, 5)), (y + 46), obj_vomit))
        sprite_index = spr_vomit2
}
if (global.playerhealth == 1 && (!instance_exists(obj_sweat)) && obj_player.state == states.normal)
    instance_create(x, y, obj_sweat)
if (angry == 1 && (!instance_exists(obj_angrycloud)) && obj_player.state == states.normal)
    instance_create(x, y, obj_angrycloud)
if (global.combotime > 0)
    global.combotime -= 0.5
if (global.combotime == 0 && global.combo != 0)
    global.combo = 0
if (input_buffer_jump < 8)
    input_buffer_jump++
if (input_buffer_secondjump < 8)
    input_buffer_secondjump++
if (input_buffer_highjump < 8)
    input_buffer_highjump++
if (key_particles == 1)
    instance_create(random_range((x + 25), (x - 25)), random_range((y + 35), (y - 25)), obj_keyeffect)
if (inv_frames == 0 && hurted == 0)
    image_alpha = 1
if (state == states.mach2 || state == states.tacklecharge || state == states.skateboard || state == states.knightpep || state == states.boxxedpep || state == states.cheesepep || state == states.knightpepslopes || state == states.knightpepattack || state == states.bombpep || state == states.facestomp || state == states.machfreefall || state == states.facestomp || state == states.machroll || state == states.mach3 || state == states.freefall || state == states.Sjump)
    attacking = 1
else
    attacking = 0
if (state == states.throwing || state == states.punch || state == states.backkick || state == states.shoulder || state == states.uppunch)
    grabbing = 1
else
    grabbing = 0
if (state == states.mach3 || state == states.fireass || state == states.firemouth || state == 8 || state == states.skateboard || state == 34 || state == states.Sjump || state == states.machroll || state == states.machfreefall || state == states.tacklecharge || (state == states.superslam && sprite_index == spr_piledriver) || state == states.knightpep || state == states.knightpepattack || state == states.knightpepslopes || state == states.boxxedpep || state == states.cheesepep || state == states.cheeseball)
    instakillmove = 1
else
    instakillmove = 0
if (flash == 1 && alarm[0] <= 0)
    alarm[0] = (0.15 * room_speed)
if (state != states.mach3 && state != states.machslide)
    autodash = 0
if ((state != states.jump && state != states.crouchjump && state != states.slap) || vsp < 0)
    fallinganimation = 0
if (state != states.freefallland && state != states.normal && state != states.machslide)
    facehurt = 0
if (state != states.normal && state != states.machslide)
    machslideAnim = 0
if (state != states.normal)
{
    idle = 0
    dashdust = 0
}
if (state != states.mach1 && state != states.jump && state != 8 && state != states.handstandjump && state != states.normal && state != states.mach2 && state != states.mach3 && state != states.freefallprep && state != states.knightpep && state != states.shotgun && state != states.knightpepslopes)
    momemtum = 0
if (state != states.Sjump && state != states.Sjumpprep)
    a = 0
if (state != states.facestomp)
    facestompAnim = 0
if (state != states.freefall && state != states.facestomp && state != states.superslam && state != states.freefallland)
    superslam = 0
if (state != states.mach2)
    machpunchAnim = 0
if (state != states.jump)
    ladderbuffer = 0
if (state != states.jump)
    stompAnim = 0
if (state != states.bump && state != states.fireass && state != states.crouch && state != states.boxxedpep && state != states.pistol && sprite_index != spr_player_crouchshoot && state != states.Sjumpprep && state != states.chainsaw && state != states.machroll && state != states.hurt && state != states.crouchslide && state != states.crouchjump)
    mask_index = spr_player_mask
else
    mask_index = spr_crouchmask
if (state == states.gottreasure || sprite_index == spr_knightpep_start || sprite_index == spr_knightpep_thunder || state == states.keyget || state == states.door || state == states.ejected || state == states.victory || state == states.comingoutdoor || state == states.gameover)
    cutscene = 1
else
    cutscene = 0
if ((place_meeting(x, y, obj_door) || place_meeting(x, y, obj_keydoor) || (place_meeting(x, y, obj_exitgate) && global.panic == 1)) && (!instance_exists(obj_uparrow)) && scr_solid(x, (y + 1)) && state == states.normal)
    instance_create(x, y, obj_uparrow)
scr_collide_destructibles()
if (state != states.titlescreen && state != states.door && state != states.Sjump && state != states.ejected && state != states.comingoutdoor && state != states.boulder && state != states.keyget && state != states.victory && state != states.portal && state != states.timesup && state != states.gottreasure && state != states.gameover)
    scr_collide_player()
if (state == states.boulder)
    scr_collide_player()
