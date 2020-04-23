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
ini_write_real(argument0, "roomSavedX", x);
ini_write_real(argument0, "roomSavedY", y-16);



//------------------------------------//
// Save room
//------------------------------------//
ini_write_real(argument0, "savedRoom", room);



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
ini_write_real(argument0, "itemCategorySlot1", global.itemCategorySlot1);
ini_write_real(argument0, "itemCategorySlot2", global.itemCategorySlot2);
ini_write_real(argument0, "itemCategorySlot3", global.itemCategorySlot3);
ini_write_real(argument0, "itemCategorySlot4", global.itemCategorySlot4);
ini_write_real(argument0, "itemCategorySlot5", global.itemCategorySlot5);


//------------------------------------//
// Save weapons
//------------------------------------//
ini_write_string(argument0, "equipmentSlot1", global.equipmentSlot1);
ini_write_string(argument0, "equipmentSlot2", global.equipmentSlot2);
ini_write_string(argument0, "equipmentSlot3", global.equipmentSlot3);
ini_write_string(argument0, "equipmentSlot4", global.equipmentSlot4);
ini_write_string(argument0, "equipmentSlot5", global.equipmentSlot5);
ini_write_real(argument0, "equipmentCategorySlot1", global.equipmentCategorySlot1);
ini_write_real(argument0, "equipmentCategorySlot2", global.equipmentCategorySlot2);
ini_write_real(argument0, "equipmentCategorySlot3", global.equipmentCategorySlot3);
ini_write_real(argument0, "equipmentCategorySlot4", global.equipmentCategorySlot4);
ini_write_real(argument0, "equipmentCategorySlot5", global.equipmentCategorySlot5);
ini_close();
