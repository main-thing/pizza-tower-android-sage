with (obj_player1)
{
    if (other.inv_frame == 0 && state != states.bombpep && state != states.knightpep && state != states.cheeseball && state != states.boxxedpep && state != states.cheesepep && state != states.knightpepattack && state != states.knightpepslopes && state != states.hurt)
    {
        instance_destroy(other.id)
        global.key_inv = 1
        key_particles = 1
        alarm[7] = 30
        scr_soundeffect(sfx_collecttoppin)
    }
}
with (obj_player2)
{
    if (other.inv_frame == 0 && state != states.knightpep && state != states.cheeseball && state != states.boxxedpep && state != states.cheesepep && state != states.knightpepattack && state != states.knightpepslopes && state != states.hurt)
    {
        instance_destroy(other.id)
        global.key_inv = 1
        key_particles = 1
        alarm[7] = 30
    }
}
with (obj_peppermandestroyable)
    instance_destroy()
if (global.keyget == 0 && obj_player.state != states.bombpep && obj_player.state != states.knightpep && obj_player.state != states.knightpepattack && obj_player.state != states.boxxedpep && obj_player.state != states.cheesepep && obj_player.state != states.knightpepslopes)
{
    obj_player.state = states.keyget
    obj_player.image_index = 0
    global.keyget = 1
}
