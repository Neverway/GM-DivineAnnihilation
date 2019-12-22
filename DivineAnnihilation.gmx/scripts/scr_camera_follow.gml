//CamFollow()

if (instance_exists(o_character_overworld_fox)) {
    var targetx = o_character_overworld_fox.x;
    var targety = o_character_overworld_fox.y;
    
    scr_camera_moveto(targetx, targety, .1);
}
