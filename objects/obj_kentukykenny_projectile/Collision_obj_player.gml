with (other.id)
{
    if (state != states.firemouth && hurted == 0)
    {
        hsp = 0
        movespeed = 0
        state = states.firemouth
        hurted = 1
        image_index = 0
        sprite_index = spr_player_firemouthintro
        state = states.firemouth
        bombpeptimer = 3
        instance_destroy(other.id)
    }
}
