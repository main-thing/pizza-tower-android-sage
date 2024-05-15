with (other.id)
{
    if (instance_exists(other.baddieID) && state != states.tumble && state != states.knightpep && state != states.knightpepslopes)
    {
        state = states.tumble
        xscale = other.baddieID.image_xscale
        movespeed = 14
        vsp = 0
        sprite_index = spr_tumble
    }
}
