// Selected save profile
if argument0 = "profile1"
{
    ini_open("profile1.sav");
}
if argument0 = "profile2"
{
    ini_open("profile2.sav");
}
if argument0 = "profile3"
{
    ini_open("profile3.sav");
}
if argument0 = "profile4"
{
    ini_open("profile4.sav");
}

show_debug_message("Saving game to: ")
show_debug_message(string(argument0))

// Save name
ini_write_string(argument0,"name",global.name);

// Save hp
ini_write_real(argument0,"health",global.hp);

// Save room
var SavedRoom = room;
ini_write_real(argument0,"room",SavedRoom);

// Save room x/y
ini_write_real(argument0,"savedx",o_character_overworld_fox.x);
ini_write_real(argument0,"savedy",o_character_overworld_fox.y);

// Save party
ini_write_real(argument0,"partymember1",global.partymember1);
ini_write_real(argument0,"partymember2",global.partymember2);

// Save gold
ini_write_real(argument0,"gold",global.gold);

// Save level
ini_write_real(argument0,"level",global.level);

// Save inventory
ini_write_string(argument0,"inv1",global.inve1);
ini_write_string(argument0,"inv2",global.inve2);
ini_write_string(argument0,"inv3",global.inve3);
ini_write_string(argument0,"inv4",global.inve4);
ini_write_string(argument0,"inv5",global.inve5);

// Save weapons
ini_write_string(argument0,"wpn1",global.wepo1);
ini_write_string(argument0,"wpn2",global.wepo2);
ini_write_string(argument0,"wpn3",global.wepo3);
ini_write_string(argument0,"wpn4",global.wepo4);
ini_write_string(argument0,"wpn5",global.wepo5);

ini_close();
