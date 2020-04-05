/// scr_pickup("item"/"weapon", "{item name}")

//==========================//
// Assign pickup to item
//==========================//
if argument0 == "item"
{

//------------------------------------//
// Inventory Slot 1
//-----------------------------------//
    if global.inventorySlot1 == "---"
    {
        global.inventorySlot1 = argument1
        instance_destroy()
    }
    
//------------------------------------//
// Inventory Slot 2
//-----------------------------------//
    else if global.inventorySlot2 == "---"
    {
        global.inventorySlot2 = argument1
        instance_destroy()
    }
    
//------------------------------------//
// Inventory Slot 3
//-----------------------------------//
        else if global.inventorySlot3 == "---"
    {
        global.inventorySlot3 = argument1
        instance_destroy()
    }

//------------------------------------//
// Inventory Slot 4
//-----------------------------------//
    else if global.inventorySlot4 == "---"
    {
        global.inventorySlot4 = argument1
        instance_destroy()
    }
        
//------------------------------------//
// Inventory Slot 5
//-----------------------------------//
    else if global.inventorySlot5 == "---"
    {
        global.inventorySlot5 = argument1
        instance_destroy()
    }
}


//==========================//
// Assign pickup to weapon
//==========================//
if argument0 == "weapon"
{

//------------------------------------//
// Weapon Slot 1
//-----------------------------------//
        if global.weaponSlot1 == "---"
    {
        global.weaponSlot1 = argument1
        instance_destroy()
    }
    
//------------------------------------//
// Weapon Slot 2
//-----------------------------------//
        else if global.weaponSlot2 == "---"
    {
        global.weaponSlot2 = argument1
        instance_destroy()
    }
    
//------------------------------------//
// Weapon Slot 3
//-----------------------------------//
        else if global.weaponSlot3 == "---"
    {
        global.weaponSlot3 = argument1
        instance_destroy()
    }
    
//------------------------------------//
// Weapon Slot 4
//-----------------------------------//
    else if global.weaponSlot4 == "---"
    {
        global.weaponSlot4 = argument1
        instance_destroy()
    }
    
//------------------------------------//
// Weapon Slot 5
//-----------------------------------//
    else if global.weaponSlot5 == "---"
    {
        global.weaponSlot5 = argument1
        instance_destroy()
    }
}
