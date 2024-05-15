with (other.id)
{
    x = other.x
    y = (other.y + (other.sprite_height - 46))
    if (!instance_exists(obj_fadeout))
    {
        obj_player1.targetDoor = other.targetDoor
        obj_player1.targetRoom = other.targetRoom
        obj_player1.hallway = 1
        obj_player1.hallwaydirection = other.image_xscale
        if instance_exists(obj_player2)
        {
            if (object_index == obj_player2)
            {
                obj_player1.x = obj_player2.x
                obj_player1.y = obj_player2.y
                obj_player1.state = states.normal
            }
            if (object_index == obj_player1)
            {
                obj_player2.x = obj_player1.x
                obj_player2.y = obj_player1.y
                obj_player2.state = states.normal
            }
            obj_player2.targetDoor = other.targetDoor
            obj_player2.targetRoom = other.targetRoom
            obj_player2.hallway = 1
            obj_player2.hallwaydirection = other.image_xscale
        }
        other.visited = 1
        image_index = 0
        if (state == states.machslide)
            state = states.normal
        scr_soundeffect(sfx_door)
        instance_create(x, y, obj_fadeout)
    }
}
