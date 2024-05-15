pal_swap_set(spr_peppalette, obj_player2.paletteselect, 0)
if (obj_player2.state != states.gameover)
{
    if (obj_player2.character == "P")
    {
        if (!((obj_player2.state == states.mach1 || obj_player2.state == states.gottreasure || obj_player2.state == states.bossintro || (obj_player2.state == states.bossintro && obj_player2.sprite_index == spr_player_bossintro) || (obj_player2.state == states.bossintro && obj_player2.sprite_index == spr_player_idle) || obj_player2.state == states.bombpep || obj_player2.state == states.machroll || obj_player2.state == states.timesup || obj_player2.state == states.chainsaw || obj_player2.state == states.shotgun || obj_player2.state == states.slam || obj_player2.state == states.Sjumpland || obj_player2.state == states.grab || obj_player2.state == states.punch || obj_player2.state == states.backbreaker || obj_player2.state == states.backkick || obj_player2.state == states.uppunch || obj_player2.state == states.shoulder || obj_player2.state == states.tackle || (obj_player2.state == states.bossintro && obj_player2.sprite_index == spr_player_levelcomplete) || (obj_player2.state == states.freefallland && shake_mag > 0) || obj_player2.state == states.freefallprep || obj_player2.state == states.freefall || obj_player2.state == states.Sjump || obj_player2.state == states.Sjumpprep || obj_player2.state == states.mach2 || obj_player2.state == states.mach3 || obj_player2.state == states.smirk || obj_player2.state == states.hurt || obj_player2.state == states.keyget || obj_player2.sprite_index == spr_player_victory || obj_player2.state == states.punch)))
        {
            if (global.playerhealth == 1)
                draw_sprite_ext(spr_pepinoHUD1hp, -1, 125, 100, 1, 1, 1, c_white, alpha)
            else if (obj_player2.angry == 1)
                draw_sprite_ext(spr_pepinoHUD3hp, -1, 125, 100, 1, 1, 1, c_white, alpha)
            else
                draw_sprite_ext(spr_pepinoHUD, -1, 125, 100, 1, 1, 1, c_white, alpha)
        }
        else if (obj_player2.state == states.Sjumpland || (obj_player2.state == states.freefallland && shake_mag > 0))
            draw_sprite_ext(spr_pepinoHUDstun, -1, 125, 100, 1, 1, 1, c_white, alpha)
        else if (obj_player2.sprite_index == spr_player_victory || obj_player2.state == states.keyget || obj_player2.state == states.smirk || obj_player2.state == states.gottreasure || (obj_player2.state == states.bossintro && obj_player2.sprite_index == spr_player_levelcomplete))
            draw_sprite_ext(spr_pepinoHUDhappy, -1, 125, 100, 1, 1, 1, c_white, alpha)
        else if (obj_player2.state == states.mach1 || obj_player2.state == states.shotgun || obj_player2.state == states.chainsaw || obj_player2.state == states.freefallprep || obj_player2.state == states.freefall || obj_player2.state == states.tackle || obj_player2.state == states.Sjump || obj_player2.state == states.slam || obj_player2.state == states.Sjumpprep || obj_player2.state == states.grab || obj_player2.state == states.punch || obj_player2.state == states.backbreaker || obj_player2.state == states.backkick || obj_player2.state == states.uppunch || obj_player2.state == states.shoulder)
            draw_sprite_ext(spr_pepinoHUDmach1, -1, 125, 100, 1, 1, 1, c_white, alpha)
        else if (obj_player2.state == states.mach2)
            draw_sprite_ext(spr_pepinoHUDmach2, -1, 125, 100, 1, 1, 1, c_white, alpha)
        else if (obj_player2.state == states.mach3 || obj_player2.state == states.machroll)
            draw_sprite_ext(spr_pepinoHUDmach3, -1, 125, 100, 1, 1, 1, c_white, alpha)
        else if (obj_player2.state == states.hurt || obj_player2.state == states.timesup || obj_player2.state == states.bombpep || (obj_player2.state == states.bossintro && obj_player2.sprite_index == spr_player_bossintro) || (obj_player2.state == states.bossintro && obj_player2.sprite_index == spr_player_idle))
            draw_sprite_ext(spr_pepinoHUDhurt, -1, 125, 100, 1, 1, 1, c_white, alpha)
    }
    if (obj_player2.character == "N")
    {
        if (!((obj_player2.state == states.mach1 || obj_player2.state == states.gottreasure || obj_player2.state == states.bossintro || (obj_player2.state == states.bossintro && obj_player2.sprite_index == spr_player_bossintro) || (obj_player2.state == states.bossintro && obj_player2.sprite_index == spr_player_idle) || obj_player2.state == states.bombpep || obj_player2.state == states.machroll || obj_player2.state == states.timesup || obj_player2.state == states.chainsaw || obj_player2.state == states.shotgun || obj_player2.state == states.slam || obj_player2.state == states.Sjumpland || obj_player2.state == states.grab || obj_player2.state == states.punch || obj_player2.state == states.backbreaker || obj_player2.state == states.backkick || obj_player2.state == states.uppunch || obj_player2.state == states.shoulder || obj_player2.state == states.tackle || (obj_player2.state == states.bossintro && obj_player2.sprite_index == spr_player_levelcomplete) || (obj_player2.state == states.freefallland && shake_mag > 0) || obj_player2.state == states.freefallprep || obj_player2.state == states.freefall || obj_player2.state == states.Sjump || obj_player2.state == states.Sjumpprep || obj_player2.state == states.mach2 || obj_player2.state == states.mach3 || obj_player2.state == states.smirk || obj_player2.state == states.hurt || obj_player2.state == states.keyget || obj_player2.sprite_index == spr_player_victory || obj_player2.state == states.punch)))
        {
            if (global.playerhealth == 1)
                draw_sprite_ext(spr_noiseHUD_lowhealth, -1, 125, 370, 1, 1, 1, c_white, alpha)
            else
                draw_sprite_ext(spr_noiseHUD_idle, -1, 125, 370, 1, 1, 1, c_white, alpha)
        }
        else if (obj_player2.state == states.Sjumpland || (obj_player2.state == states.freefallland && shake_mag > 0))
            draw_sprite_ext(spr_pepinoHUDstun, -1, 125, 370, 1, 1, 1, c_white, alpha)
        else if (obj_player2.sprite_index == spr_player_victory || obj_player2.state == states.keyget || obj_player2.state == states.smirk || obj_player2.state == states.gottreasure || (obj_player2.state == states.bossintro && obj_player2.sprite_index == spr_player_levelcomplete))
            draw_sprite_ext(spr_noiseHUD_happy, -1, 125, 370, 1, 1, 1, c_white, alpha)
        else if (obj_player2.state == states.mach1 || obj_player2.state == states.shotgun || obj_player2.state == states.chainsaw || obj_player2.state == states.freefallprep || obj_player2.state == states.freefall || obj_player2.state == states.tackle || obj_player2.state == states.Sjump || obj_player2.state == states.slam || obj_player2.state == states.Sjumpprep || obj_player2.state == states.grab || obj_player2.state == states.punch || obj_player2.state == states.backbreaker || obj_player2.state == states.backkick || obj_player2.state == states.uppunch || obj_player2.state == states.shoulder)
            draw_sprite_ext(spr_noiseHUD_mach1, -1, 125, 370, 1, 1, 1, c_white, alpha)
        else if (obj_player2.state == states.mach2)
            draw_sprite_ext(spr_noiseHUD_mach2, -1, 125, 370, 1, 1, 1, c_white, alpha)
        else if (obj_player2.state == states.mach3 || obj_player2.state == states.machroll)
            draw_sprite_ext(spr_pepinoHUDmach3, -1, 125, 370, 1, 1, 1, c_white, alpha)
        else if (obj_player2.state == states.hurt || obj_player2.state == states.timesup || obj_player2.state == states.bombpep || (obj_player2.state == states.bossintro && obj_player2.sprite_index == spr_player_bossintro) || (obj_player2.state == states.bossintro && obj_player2.sprite_index == spr_player_idle))
            draw_sprite_ext(spr_noiseHUD_hurt, -1, 125, 370, 1, 1, 1, c_white, alpha)
    }
    shader_reset()
    if (obj_player2.character == "P")
    {
        if (obj_player2.mach2 < 7)
            draw_sprite_ext(spr_speedbar, 0, 125, 140, 1, 1, 1, c_white, alpha)
        else if (obj_player2.mach2 >= 7 && obj_player2.mach2 < 35)
            draw_sprite_ext(spr_speedbar, 1, 125, 140, 1, 1, 1, c_white, alpha)
        else if (obj_player2.mach2 >= 35 && obj_player2.mach2 < 50)
            draw_sprite_ext(spr_speedbar, 2, 125, 140, 1, 1, 1, c_white, alpha)
        else if (obj_player2.mach2 >= 50 && obj_player2.mach2 < 75)
            draw_sprite_ext(spr_speedbar, 3, 125, 140, 1, 1, 1, c_white, alpha)
        else if (obj_player2.mach2 >= 75 && obj_player2.mach2 < 100)
            draw_sprite_ext(spr_speedbar, 4, 125, 140, 1, 1, 1, c_white, alpha)
        else if (obj_player2.mach2 >= 100)
            draw_sprite_ext(spr_speedbarmax, -1, 125, 140, 1, 1, 1, c_white, alpha)
    }
    if (obj_player2.y < 200 && obj_player2.x < 200)
        alpha = 0.5
    else
        alpha = 1
    font = font_add_sprite_ext(spr_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.1234567890:", 1, 0)
    draw_set_font(font)
    draw_set_halign(fa_center)
    draw_set_color(c_white)
    if (global.panic == 1)
    {
        if (global.seconds < 10)
        {
            if (global.minutes < 1)
                draw_set_color(c_red)
            else
                draw_set_color(c_white)
            draw_text((random_range(1, -1) + 480), (random_range(1, -1) + 65), string_hash_to_newline(((string(global.minutes) + ":0") + string(global.seconds))))
        }
        else if (global.seconds >= 10)
        {
            if (global.minutes < 1)
                draw_set_color(c_red)
            else
                draw_set_color(c_white)
            draw_text((random_range(1, -1) + 480), (random_range(1, -1) + 65), string_hash_to_newline(((string(global.minutes) + ":") + string(global.seconds))))
        }
    }
    if (global.key_inv == 1)
        draw_sprite_ext(spr_key, -1, 50, 30, 1, 1, 1, c_white, alpha)
    draw_sprite_ext(spr_inv, -1, 50, 30, 1, 1, 1, c_white, alpha)
}
draw_set_blend_mode(bm_normal)
