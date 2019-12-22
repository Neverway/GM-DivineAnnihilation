target = o_character_overworld_fox
/*
argumentfalse = move_player
argument1 = move_player_speed
argument2 = face_player
argument3 = set_portrait
argument4 = set_portrait_direction
argument5 = text
argument6 = def_other
argument7 = move_other
argument8 = move_other_speed
argument9 = face_other
argument1false = destroy_after_use
*/


// Move player
if argument0 != false
{
    if argument1 != false
    {
        with target
        {
            move_towards_point(x,y+argument0,argument1)
        }
    }
}


// Face player
if argument2 != false
{
    target.face = argument2
}


if argument3 != false
{
    global.portrait = argument3
}


if argument4 != false
{
    show_debug_message("Failed: No programming")
}

if argument5 != ""
{
    global.textcontent = argument5;
    o_system_textbox_handler.cinteract = 1;
    o_character_overworld_fox.canmove = false;
    global.tboxActive = true;
}

if argument6 != false
{
    other_target = argument6
}

if argument7 != 0
{
    if argument8 != 0
    {
        with other_target
        {
            move_towards_point(x,y+argument7, argument8)
        }
    }
}

// Face other
if argument9 != ""
{
    target.face = argument9
}

if argument10 = 0
{
    global.com_channel = 0;
    global.com_stay = 0;
}

else
{
    global.com_stay = 1;
}

instance_destroy()
