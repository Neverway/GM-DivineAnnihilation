with self
    if place_meeting(x,y,o_character_overworld_fox)
    {
        o_system_textbox_handler.cinteract = 1;
        o_character_overworld_fox.canmove = 0;
        global.tboxActive = true;
        instance_destroy()
    }
