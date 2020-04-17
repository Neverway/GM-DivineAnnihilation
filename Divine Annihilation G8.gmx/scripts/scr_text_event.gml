with self
{
    if place_meeting(x,y,obj_character_overworld_fox)
    {
        obj_system_textbox_handler.cinteract = 1;
        obj_character_overworld_fox.canMove = false;
        global.textboxActive = true;
        instance_destroy()
    }
}
