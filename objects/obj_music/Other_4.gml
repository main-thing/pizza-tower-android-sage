if (global.panic == 0 && global.snickchallenge == 0)
{
    if instance_exists(obj_pepperman)
    {
        audio_stop_all()
        scr_sound(mu_chase)
    }
    var roomname = room_get_name(room)
    if (string_letters(roomname) == "Realtitlescreen" || string_letters(roomname) == "Realtitlescreen")
    {
        if (!audio_is_playing(mu_title))
        {
            audio_stop_all()
            scr_sound(mu_title)
            pausedmusic = 83
        }
    }
    if (string_letters(roomname) == "hubroom" || string_letters(roomname) == "Titlescreen")
    {
        if (!audio_is_playing(mu_hub))
        {
            audio_stop_all()
            scr_sound(mu_hub)
            pausedmusic = 70
        }
    }
    if (string_letters(roomname) == "PProom" || string_letters(roomname) == "PProom")
    {
        if (!audio_is_playing(mu_tutorial))
        {
            audio_stop_all()
            scr_sound(mu_tutorial)
            pausedmusic = 84
        }
    }
    if (string_letters(roomname) == "dungeon")
    {
        for (i = 0; i < 20; i++)
        {
            if (roomname == ("dungeon_" + string(i)) && i <= 8)
            {
                if (!audio_is_playing(mu_dungeon))
                {
                    audio_stop_all()
                    scr_sound(mu_dungeon)
                    audio_sound_set_track_position(global.music, fadeoff)
                    pausedmusic = 82
                }
            }
            else if (roomname == ("dungeon_" + string(i)) && i > 8)
            {
                if (!audio_is_playing(mu_dungeondepth))
                {
                    audio_stop_all()
                    scr_sound(mu_dungeondepth)
                    audio_sound_set_track_position(global.music, fadeoff)
                    pausedmusic = 90
                }
            }
        }
    }
    if (string_letters(roomname) == "medieval")
    {
        for (i = 0; i < 20; i++)
        {
            if (roomname == ("medieval_" + string(i)) && i <= 2)
            {
                if (!audio_is_playing(mu_medievalentrance))
                {
                    audio_stop_all()
                    scr_sound(mu_medievalentrance)
                    audio_sound_set_track_position(global.music, fadeoff)
                    pausedmusic = 85
                }
            }
            else if (roomname == ("medieval_" + string(i)) && i > 2 && i <= 5)
            {
                if (!audio_is_playing(mu_medievalremix))
                {
                    audio_stop_all()
                    scr_sound(mu_medievalremix)
                    audio_sound_set_track_position(global.music, fadeoff)
                    pausedmusic = 75
                }
            }
            else if (roomname == ("medieval_" + string(i)) && i > 5)
            {
                if (!audio_is_playing(mu_medieval))
                {
                    audio_stop_all()
                    scr_sound(mu_medieval)
                    audio_sound_set_track_position(global.music, fadeoff)
                    pausedmusic = 74
                }
            }
        }
    }
    if (string_letters(roomname) == "ruin")
    {
        for (i = 0; i < 20; i++)
        {
            if (roomname == ("ruin_" + string(i)) && i <= 6)
            {
                if (!audio_is_playing(mu_ruin))
                {
                    audio_stop_all()
                    scr_sound(mu_ruin)
                    audio_sound_set_track_position(global.music, fadeoff)
                    pausedmusic = 86
                }
            }
            else if (roomname == ("ruin_" + string(i)) && i > 6)
            {
                if (!audio_is_playing(mu_ruinremix))
                {
                    audio_stop_all()
                    scr_sound(mu_ruinremix)
                    audio_sound_set_track_position(global.music, fadeoff)
                    pausedmusic = 87
                }
            }
        }
    }
    if (string_letters(roomname) == "medievalsecret" || string_letters(roomname) == "ruinsecret" || string_letters(roomname) == "dungeonsecret")
    {
        if (!audio_is_playing(mu_secret))
        {
            audio_stop_all()
            scr_sound(mu_secret)
            audio_sound_set_track_position(global.music, fadeoff)
            pausedmusic = 71
        }
    }
}
