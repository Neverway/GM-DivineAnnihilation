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
//  Save player name
//------------------------------------//
global.playerName = ini_write_string(argument0, "playerName", "FOX");


//------------------------------------//
// Save player health
//------------------------------------//
global.playerHealth = ini_write_real(argument0, "playerHealth", 99);


//------------------------------------//
// Save player gold
//------------------------------------//
global.playerGold = ini_write_real(argument0, "playerGold", 0);


//------------------------------------//
// Save player level
//------------------------------------//
global.playerLevel = ini_write_real(argument0, "playerLevel", 0);


//------------------------------------//
// Save room saved coordinates
//------------------------------------//
global.roomSavedX = ini_write_real(argument0, "roomSavedX", 0);
global.roomSavedY = ini_write_real(argument0, "roomSavedY", 0);



//------------------------------------//
// Save room
//------------------------------------//
global.savedRoom = ini_write_real(argument0, "savedRoom", 4);



//------------------------------------//
// Save party
//------------------------------------//
global.partyMember1Following = ini_write_real(argument0, "partyMember1Following", false);
global.partyMember2Following = ini_write_real(argument0, "partyMember2Following", false);
global.partyMember3Following = ini_write_real(argument0, "partyMember3Following", false);


//------------------------------------//
// Save ineventory
//------------------------------------//
global.itemSlot1 = ini_write_string(argument0, "itemSlot1", "---");
global.itemSlot2 = ini_write_string(argument0, "itemSlot2", "---");
global.itemSlot3 = ini_write_string(argument0, "itemSlot3", "---");
global.itemSlot4 = ini_write_string(argument0, "itemSlot4", "---");
global.itemSlot5 = ini_write_string(argument0, "itemSlot5", "---");
global.itemCategorySlot1 = ini_write_real(argument0, "itemCategorySlot1", spr_menu_inventory_icon_none);
global.itemCategorySlot2 = ini_write_real(argument0, "itemCategorySlot2", spr_menu_inventory_icon_none);
global.itemCategorySlot3 = ini_write_real(argument0, "itemCategorySlot3", spr_menu_inventory_icon_none);
global.itemCategorySlot4 = ini_write_real(argument0, "itemCategorySlot4", spr_menu_inventory_icon_none);
global.itemCategorySlot5 = ini_write_real(argument0, "itemCategorySlot5", spr_menu_inventory_icon_none);


//------------------------------------//
// Save weapons
//------------------------------------//
global.equipmentSlot1 = ini_write_string(argument0, "equipmentSlot1", "---");
global.equipmentSlot2 = ini_write_string(argument0, "equipmentSlot2", "---");
global.equipmentSlot3 = ini_write_string(argument0, "equipmentSlot3", "---");
global.equipmentSlot4 = ini_write_string(argument0, "equipmentSlot4", "---");
global.equipmentSlot5 = ini_write_string(argument0, "equipmentSlot5", "---");
global.equipmentCategorySlot1 = ini_write_real(argument0, "equipmentCategorySlot1", spr_menu_inventory_icon_none);
global.equipmentCategorySlot2 = ini_write_real(argument0, "equipmentCategorySlot2", spr_menu_inventory_icon_none);
global.equipmentCategorySlot3 = ini_write_real(argument0, "equipmentCategorySlot3", spr_menu_inventory_icon_none);
global.equipmentCategorySlot4 = ini_write_real(argument0, "equipmentCategorySlot4", spr_menu_inventory_icon_none);
global.equipmentCategorySlot5 = ini_write_real(argument0, "equipmentCategorySlot5", spr_menu_inventory_icon_none);
ini_close();
