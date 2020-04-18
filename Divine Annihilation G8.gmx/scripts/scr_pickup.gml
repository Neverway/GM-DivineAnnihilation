/// scr_pickup("item"/"equipment", "{item name}")

//==========================//
// Assign pickup to item
//==========================//
if argument0 == "item"
{

//------------------------------------//
// item Slot 1
//-----------------------------------//
    if global.itemSlot1 == "---"
    {
        global.itemSlot1 = argument1;
        global.itemCatagorySlot1 = argument2;
        instance_destroy();
    }
    
//------------------------------------//
// item Slot 2
//-----------------------------------//
    else if global.itemSlot2 == "---"
    {
        global.itemSlot2 = argument1;
        global.itemCatagorySlot2 = argument2;
        instance_destroy();
    }
    
//------------------------------------//
// item Slot 3
//-----------------------------------//
        else if global.itemSlot3 == "---"
    {
        global.itemSlot3 = argument1;
        global.itemCatagorySlot3 = argument2;
        instance_destroy();
    }

//------------------------------------//
// item Slot 4
//-----------------------------------//
    else if global.itemSlot4 == "---"
    {
        global.itemSlot4 = argument1;
        global.itemCatagorySlot4 = argument2;
        instance_destroy();
    }
        
//------------------------------------//
// item Slot 5
//-----------------------------------//
    else if global.itemSlot5 == "---"
    {
        global.itemSlot5 = argument1;
        global.itemCatagorySlot5 = argument2;
        instance_destroy();
    }
}


//==========================//
// Assign pickup to equipment
//==========================//
if argument0 == "equipment"
{

//------------------------------------//
// equipment Slot 1
//-----------------------------------//
        if global.equipmentSlot1 == "---"
    {
        global.equipmentSlot1 = argument1
        global.equipmentCatagorySlot1 = argument2
        instance_destroy()
    }
    
//------------------------------------//
// equipment Slot 2
//-----------------------------------//
        else if global.equipmentSlot2 == "---"
    {
        global.equipmentSlot2 = argument1
        global.equipmentCatagorySlot2 = argument2
        instance_destroy()
    }
    
//------------------------------------//
// equipment Slot 3
//-----------------------------------//
        else if global.equipmentSlot3 == "---"
    {
        global.equipmentSlot3 = argument1
        global.equipmentCatagorySlot3 = argument2
        instance_destroy()
    }
    
//------------------------------------//
// equipment Slot 4
//-----------------------------------//
    else if global.equipmentSlot4 == "---"
    {
        global.equipmentSlot4 = argument1
        global.equipmentCatagorySlot4 = argument2
        instance_destroy()
    }
    
//------------------------------------//
// equipment Slot 5
//-----------------------------------//
    else if global.equipmentSlot5 == "---"
    {
        global.equipmentSlot5 = argument1
        global.equipmentCatagorySlot5 = argument2
        instance_destroy()
    }
}
