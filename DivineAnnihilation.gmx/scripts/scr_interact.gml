
with self
    if place_meeting(x,y,o_character_overworld_fox)
    {
        if keyboard_check_pressed(ord('Z'))
        {
        o_system_textbox_handler.cinteract = 1;
        o_character_overworld_fox.canmove = 0;
        }
    }
