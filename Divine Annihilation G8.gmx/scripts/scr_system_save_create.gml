//==========================//
// Assign deafault variables
//==========================//

//------------------------------------//
// Set player name
//------------------------------------//
global.playerName = "FOX"


//------------------------------------//
// Set player health
//------------------------------------//
global.playerHealth = 99;


//------------------------------------//
// Set player gold
//------------------------------------//
global.playerGold = 0;


//------------------------------------//
// Set player level
//------------------------------------//
global.playerLevel = 0;


//------------------------------------//
// Set room saved coordinates
//------------------------------------//
global.roomSavedX = 0;
global.roomSavedY = 0;


//------------------------------------//
// Set saved room
//------------------------------------//
global.savedRoom = 3;


//------------------------------------//
// Set party members
//------------------------------------//
global.partyMember1Following = false;
global.partyMember2Following = false;
global.partyMember3Following = false;


//------------------------------------//
// Set inventory
//------------------------------------//
global.itemSlot1 = "---";
global.itemSlot2 = "---";
global.itemSlot3 = "---";
global.itemSlot4 = "---";
global.itemSlot5 = "---";
global.itemCatagorySlot1 = spr_menu_inventory_icon_none;
global.itemCatagorySlot2 = spr_menu_inventory_icon_none;
global.itemCatagorySlot3 = spr_menu_inventory_icon_none;
global.itemCatagorySlot4 = spr_menu_inventory_icon_none;
global.itemCatagorySlot5 = spr_menu_inventory_icon_none;

//------------------------------------//
// Set weapons
//------------------------------------//
global.equipmentSlot1 = "---";
global.equipmentSlot2 = "---";
global.equipmentSlot3 = "---";
global.equipmentSlot4 = "---";
global.equipmentSlot5 = "---";
global.equipmentCatagorySlot1 = spr_menu_inventory_icon_none;
global.equipmentCatagorySlot2 = spr_menu_inventory_icon_none;
global.equipmentCatagorySlot3 = spr_menu_inventory_icon_none;
global.equipmentCatagorySlot4 = spr_menu_inventory_icon_none;
global.equipmentCatagorySlot5 = spr_menu_inventory_icon_none;


//==========================//
// Open selected save file
//==========================//

//------------------------------------//
// Profile 1 selected
//------------------------------------//
if argument0 = "profile1"
{
    ini_open("profile1.sav");
}


//------------------------------------//
// Profile 2 selected
//------------------------------------//
if argument0 = "profile2"
{
    ini_open("profile2.sav");
}


//------------------------------------//
// Profile 3 selected
//------------------------------------//
if argument0 = "profile3"
{
    ini_open("profile3.sav");
}


//------------------------------------//
// Profile 4 selected
//------------------------------------//
if argument0 = "profile4"
{
    ini_open("profile4.sav");
}


//==========================//
// Write deafault variables to file
//==========================//

//------------------------------------//
//  Save player name
//------------------------------------//
ini_write_string(argument0, "playerName", global.playerName);


//------------------------------------//
// Save player health
//------------------------------------//
ini_write_real(argument0, "playerHealth", global.playerHealth);


//------------------------------------//
// Save player gold
//------------------------------------//
ini_write_real(argument0, "playerGold", global.playerGold);


//------------------------------------//
// Save player level
//------------------------------------//
ini_write_real(argument0, "playerLevel", global.playerLevel);


//------------------------------------//
// Save room saved coordinates
//------------------------------------//
ini_write_real(argument0, "roomSavedX", global.roomSavedX);
ini_write_real(argument0, "roomSavedY", global.roomSavedY);


//------------------------------------//
// Save room
//------------------------------------//
ini_write_real(argument0, "savedRoom", global.savedRoom);


//------------------------------------//
// Save party
//------------------------------------//
ini_write_real(argument0, "partyMember1Following", global.partyMember1Following);
ini_write_real(argument0, "partyMember2Following", global.partyMember2Following);
ini_write_real(argument0, "partyMember3Following", global.partyMember3Following);


//------------------------------------//
// Save ineventory
//------------------------------------//
ini_write_string(argument0, "itemSlot1", global.itemSlot1);
ini_write_string(argument0, "itemSlot2", global.itemSlot2);
ini_write_string(argument0, "itemSlot3", global.itemSlot3);
ini_write_string(argument0, "itemSlot4", global.itemSlot4);
ini_write_string(argument0, "itemSlot5", global.itemSlot5);
ini_write_real(argument0, "itemCatagorySlot1", global.itemCatagorySlot1);
ini_write_real(argument0, "itemCatagorySlot2", global.itemCatagorySlot2);
ini_write_real(argument0, "itemCatagorySlot3", global.itemCatagorySlot3);
ini_write_real(argument0, "itemCatagorySlot4", global.itemCatagorySlot4);
ini_write_real(argument0, "itemCatagorySlot5", global.itemCatagorySlot5);


//------------------------------------//
// Save weapons
//------------------------------------//
ini_write_string(argument0, "equipmentSlot1", global.equipmentSlot1);
ini_write_string(argument0, "equipmentSlot2", global.equipmentSlot2);
ini_write_string(argument0, "equipmentSlot3", global.equipmentSlot3);
ini_write_string(argument0, "equipmentSlot4", global.equipmentSlot4);
ini_write_string(argument0, "equipmentSlot5", global.equipmentSlot5);
ini_write_real(argument0, "equipmentCatagorySlot1", global.equipmentCatagorySlot1);
ini_write_real(argument0, "equipmentCatagorySlot2", global.equipmentCatagorySlot2);
ini_write_real(argument0, "equipmentCatagorySlot3", global.equipmentCatagorySlot3);
ini_write_real(argument0, "equipmentCatagorySlot4", global.equipmentCatagorySlot4);
ini_write_real(argument0, "equipmentCatagorySlot5", global.equipmentCatagorySlot5);

ini_close();
room_goto(2);
