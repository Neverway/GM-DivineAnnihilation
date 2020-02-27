//==========================//
// Camera target is fox character
//==========================//
if instance_exists(obj_character_overworld_fox)
{
    var targetX = obj_character_overworld_fox.x;
    var targetY = obj_character_overworld_fox.y;
    scr_system_camera_moveTo(targetX, targetY, .1);
}
