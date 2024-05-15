switch state
{
    case states.idle:
        scr_enemy_idle()
        break
    case 94:
        scr_enemy_charge()
        break
    case 96:
        scr_enemy_turn()
        break
    case 100:
        scr_enemy_walk()
        break
    case 102:
        scr_enemy_land()
        break
    case 103:
        scr_enemy_hit()
        break
    case 104:
        scr_enemy_stun()
        break
    case states.throwing:
        scr_pizzagoblin_throw()
        break
    case 107:
        scr_enemy_grabbed()
        break
}

if (state == states.stun && stunned > 100 && birdcreated == 0)
{
    birdcreated = 1
    with (instance_create(x, y, obj_enemybird))
        ID = other.id
}
if (state != states.stun)
    birdcreated = 0
if (flash == 1 && alarm[2] <= 0)
    alarm[2] = (0.15 * room_speed)
if (state != states.grabbed)
    depth = 0
if (state != states.stun)
    thrown = 0
if (obj_player.x > (x - 400) && obj_player.x < (x + 400) && y <= (obj_player.y + 60) && y >= (obj_player.y - 60))
{
    if (state != states.idle && obj_player1.state == states.mach3)
    {
        state = states.idle
        sprite_index = scaredspr
        if (x != obj_player.x)
            image_xscale = (-(sign((x - obj_player.x))))
    }
}
if (bombreset > 0)
    bombreset--
if (x != obj_player1.x && state != states.throwing && obj_player.state != states.tumble && bombreset == 0 && grounded)
{
    if (obj_player1.x > (x - 80) && obj_player1.x < (x + 80) && y <= (obj_player1.y + 100) && y >= (obj_player1.y - 100))
    {
        if (state == states.walk)
        {
            image_index = 0
            sprite_index = spr_pepgoblin_kick
            image_xscale = (-(sign((x - obj_player.x))))
            state = states.throwing
        }
    }
}
if instance_exists(obj_player2)
{
    if (x != obj_player2.x && state != states.throwing && bombreset == 0 && grounded)
    {
        if (obj_player2.x > (x - 100) && obj_player2.x < (x + 100) && y <= (obj_player2.y + 100) && y >= (obj_player2.y - 100))
        {
            if (state == states.walk || state == states.idle)
            {
                image_index = 0
                sprite_index = spr_pepgoblin_kick
                image_xscale = (-(sign((x - obj_player.x))))
                state = states.throwing
            }
        }
    }
}
if (grounded && state == states.throwing && floor(image_index) == 3)
    vsp = -5
if (boundbox == 0)
{
    with (instance_create(x, y, obj_baddiecollisionbox))
    {
        sprite_index = other.sprite_index
        mask_index = other.sprite_index
        baddieID = other.id
        other.boundbox = 1
    }
}
