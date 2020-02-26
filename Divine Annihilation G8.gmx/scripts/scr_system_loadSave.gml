//==========================//
// Load selected profile
//==========================//

//------------------------------------//
//  Profile 1
//------------------------------------//
if file_exists("profile1.sav") and argument0 == "profile1"
{
    ini_open("profile1.sav");
}


//------------------------------------//
//  Profile 2
//------------------------------------//
if file_exists("profile2.sav") and argument0 == "profile2"
{
    ini_open("profile2.sav");
}


//------------------------------------//
//  Profile 3
//------------------------------------//
if file_exists("profile3.sav") and argument0 == "profile3"
{
    ini_open("profile3.sav");
}


//------------------------------------//
//  Profile 4
//------------------------------------//
if file_exists("profile4.sav") and argument0 == "profile4"
{
    ini_open("profile4.sav");
}


//------------------------------------//
//  Load player name
//------------------------------------//
global.playerName = ini_read_string(argument0, "playerName", "FOX");


//------------------------------------//
// Load player health
//------------------------------------//
global.playerHealth = ini_read_real(argument0, "playerHealth", 99);


//------------------------------------//
// Load player gold
//------------------------------------//
global.playerGold = ini_read_real(argument0, "playerGold", 0);


//------------------------------------//
// Load player level
//------------------------------------//
global.level = ini_read_real(argument0, "playerLevel", 0);


//------------------------------------//
// Load room saved coordinates
//------------------------------------//
global.roomSavedX = ini_read_real(argument0, "roomSavedX", 0);
global.roomSavedY = ini_read_real(argument0, "roomSavedY", 0);
obj_system_config.alarm[0] = 10;


//------------------------------------//
// Load room
//------------------------------------//
global.savedRoom = ini_read_real(argument0, "savedRoom", 4);
room_goto(global.savedRoom);


//------------------------------------//
// Load party
//------------------------------------//
global.partyMember1Following = ini_read_real(argument0, "partyMember1Following", false);
global.partyMember2Following = ini_read_real(argument0, "partyMember2Following", false);
global.partyMember3Following = ini_read_real(argument0, "partyMember3Following", false);


//------------------------------------//
// Load ineventory
//------------------------------------//
global.inventorySlot1 = ini_read_string(argument0, "inventorySlot1", "---");
global.inventorySlot2 = ini_read_string(argument0, "inventorySlot2", "---");
global.inventorySlot3 = ini_read_string(argument0, "inventorySlot3", "---");
global.inventorySlot4 = ini_read_string(argument0, "inventorySlot4", "---");
global.inventorySlot5 = ini_read_string(argument0, "inventorySlot5", "---");


//------------------------------------//
// Save weapons
//------------------------------------//
global.weaponSlot1 = ini_read_string(argument0, "weaponSlot1", "---");
global.weaponSlot2 = ini_read_string(argument0, "weaponSlot2", "---");
global.weaponSlot3 = ini_read_string(argument0, "weaponSlot3", "---");
global.weaponSlot4 = ini_read_string(argument0, "weaponSlot4", "---");
global.weaponSlot5 = ini_read_string(argument0, "weaponSlot5", "---");
ini_close();
