x = obj_player.x
y = obj_player.y
image_xscale = obj_player.xscale
if (obj_player.movespeed <= 7)
    instance_destroy()
with (obj_player)
{
    if (state != states.mach2)
        instance_destroy(other.id)
}
