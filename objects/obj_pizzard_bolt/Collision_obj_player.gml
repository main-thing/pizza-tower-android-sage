with (other.id)
{
    if (state != states.knightpep && hurted == 0)
    {
        scr_soundeffect(sfx_becomeknight)
        hsp = 0
        movespeed = 0
        state = states.knightpep
        image_index = 0
        sprite_index = spr_knightpepthunder
        instance_destroy(other.id)
    }
}
