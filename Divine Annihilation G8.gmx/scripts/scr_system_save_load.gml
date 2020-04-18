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
global.playerLevel = ini_read_real(argument0, "playerLevel", 0);


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
global.itemSlot1 = ini_read_string(argument0, "itemSlot1", "---");
global.itemSlot2 = ini_read_string(argument0, "itemSlot2", "---");
global.itemSlot3 = ini_read_string(argument0, "itemSlot3", "---");
global.itemSlot4 = ini_read_string(argument0, "itemSlot4", "---");
global.itemSlot5 = ini_read_string(argument0, "itemSlot5", "---");
global.itemCatagorySlot1 = ini_read_real(argument0, "itemCatagorySlot1", spr_menu_inventory_icon_none);
global.itemCatagorySlot2 = ini_read_real(argument0, "itemCatagorySlot2", spr_menu_inventory_icon_none);
global.itemCatagorySlot3 = ini_read_real(argument0, "itemCatagorySlot3", spr_menu_inventory_icon_none);
global.itemCatagorySlot4 = ini_read_real(argument0, "itemCatagorySlot4", spr_menu_inventory_icon_none);
global.itemCatagorySlot5 = ini_read_real(argument0, "itemCatagorySlot5", spr_menu_inventory_icon_none);


//------------------------------------//
// Load weapons
//------------------------------------//
global.equipmentSlot1 = ini_read_string(argument0, "equipmentSlot1", "---");
global.equipmentSlot2 = ini_read_string(argument0, "equipmentSlot2", "---");
global.equipmentSlot3 = ini_read_string(argument0, "equipmentSlot3", "---");
global.equipmentSlot4 = ini_read_string(argument0, "equipmentSlot4", "---");
global.equipmentSlot5 = ini_read_string(argument0, "equipmentSlot5", "---");
global.equipmentCatagorySlot1 = ini_read_real(argument0, "equipmentCatagorySlot1", spr_menu_inventory_icon_none);
global.equipmentCatagorySlot2 = ini_read_real(argument0, "equipmentCatagorySlot2", spr_menu_inventory_icon_none);
global.equipmentCatagorySlot3 = ini_read_real(argument0, "equipmentCatagorySlot3", spr_menu_inventory_icon_none);
global.equipmentCatagorySlot4 = ini_read_real(argument0, "equipmentCatagorySlot4", spr_menu_inventory_icon_none);
global.equipmentCatagorySlot5 = ini_read_real(argument0, "equipmentCatagorySlot5", spr_menu_inventory_icon_none);
ini_close();
