if (place_meeting(x, (y - 1), obj_player) && obj_player1.state != states.gameover)
{
    obj_player.state = states.fireass
    obj_player.image_index = 0
    obj_player.vsp = -25
    obj_player.sprite_index = obj_player.spr_fireass
    scr_soundeffect(sfx_scream5)
}
