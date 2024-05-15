if instance_exists(other.baddieID)
{
    with (other.id)
    {
        if ((baddieID.state == states.stun && baddieID.hsp != 0 && baddieID.thrown == 1 && other.state != states.stun) || (baddieID.state == states.grabbed && obj_player.state == states.superslam))
        {
            other.state = states.stun
            instance_create(other.x, other.y, obj_slapstar)
            instance_create(other.x, other.y, obj_baddiegibs)
            other.flash = 1
            global.hit += 1
            scr_sound(sfx_killingblow)
            instance_create(x, y, obj_bumpeffect)
            other.stunned = 200
            other.vsp = -5
            other.hsp = ((-other.image_xscale) * 3)
        }
    }
}
