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
global.inventorySlot1 = "---";
global.inventorySlot2 = "---";
global.inventorySlot3 = "---";
global.inventorySlot4 = "---";
global.inventorySlot5 = "---";


//------------------------------------//
// Set weapons
//------------------------------------//
global.weaponSlot1 = "---";
global.weaponSlot2 = "---";
global.weaponSlot3 = "---";
global.weaponSlot4 = "---";
global.weaponSlot5 = "---";


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
ini_write_string(argument0, "inventorySlot1", global.inventorySlot1);
ini_write_string(argument0, "inventorySlot2", global.inventorySlot2);
ini_write_string(argument0, "inventorySlot3", global.inventorySlot3);
ini_write_string(argument0, "inventorySlot4", global.inventorySlot4);
ini_write_string(argument0, "inventorySlot5", global.inventorySlot5);


//------------------------------------//
// Save weapons
//------------------------------------//
ini_write_string(argument0, "weaponSlot1", global.weaponSlot1);
ini_write_string(argument0, "weaponSlot2", global.weaponSlot2);
ini_write_string(argument0, "weaponSlot3", global.weaponSlot3);
ini_write_string(argument0, "weaponSlot4", global.weaponSlot4);
ini_write_string(argument0, "weaponSlot5", global.weaponSlot5);

ini_close();
room_goto(2);
