image_speed = 0.35
image_xscale = obj_player.xscale
x = obj_player.x
y = obj_player.y
if (obj_player.angry == 0 || obj_player.state != states.normal)
    instance_destroy()
