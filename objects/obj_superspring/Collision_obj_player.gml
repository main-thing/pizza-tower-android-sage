with (obj_player)
{
    if (state != states.Sjump)
    {
        if (state == states.knightpep || state == states.knightpepattack || state == states.knightpepslopes)
        {
            with (instance_create(x, y, obj_knightdebris))
                image_index = 0
            with (instance_create(x, y, obj_knightdebris))
                image_index = 1
            with (instance_create(x, y, obj_knightdebris))
                image_index = 2
            with (instance_create(x, y, obj_knightdebris))
                image_index = 3
            with (instance_create(x, y, obj_knightdebris))
                image_index = 4
            with (instance_create(x, y, obj_knightdebris))
                image_index = 5
        }
        if (state == states.bombpep)
            instance_create(x, y, obj_bombexplosion)
        scr_soundeffect(sfx_superjumprelease)
        sprite_index = spr_player_superjump
        state = states.Sjump
        vsp = -10
        other.image_index = 0
        other.image_speed = 0.35
    }
}
