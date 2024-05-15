if (obj_player.shotgunAnim == 0 && obj_player.backupweapon == 0 && obj_player.state == states.handstandjump)
{
    obj_player.shotgunAnim = 1
    obj_player.state = states.shotgun
    obj_player.image_index = 0
    obj_player.sprite_index = spr_shotgun_pullout
    global.gotshotgun = 1
    scr_soundeffect(sfx_shotgungot)
    instance_destroy()
}
else if (obj_player.shotgunAnim == 1 && obj_player.backupweapon == 0 && obj_player.state == states.handstandjump)
{
    obj_player.backupweapon = 1
    instance_destroy()
}
