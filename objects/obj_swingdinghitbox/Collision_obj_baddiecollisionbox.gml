with (other.id)
{
    if (instance_exists(baddieID) && baddieID.state != states.grabbed)
    {
        instance_destroy()
        instance_destroy(baddieID)
    }
}
