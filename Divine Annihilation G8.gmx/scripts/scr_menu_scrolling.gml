//==========================//
// Scroll through menus by changing the image index
//==========================//
indexMinimum = argument0 // What is the minimum image index that the menu can go to
indexMaximum = argument1 // What is the maximum image index that the menu can go to
scrollDirection = argument2 // Is it a "horizontal" or "verticle" scrolling menu


//==========================//
// Up and down menu scrolling
//==========================//
if scrollDirection == "verticle"
{
    if global.menuActive == true
    {
        if global.keyMenuUp && !global.keyMenuDown
        {
            if image_index > indexMinimum
            {
                image_index = image_index - 1
            }
        }
    
        if(global.keyMenuDown && !global.keyMenuUp)
        {
            if image_index < indexMaximum
            {
            image_index = image_index + 1
            }
        }
    }
}


//==========================//
// Left and right menu scrolling
//==========================//
if scrollDirection == "horizontal"
{
    if global.menuActive == true
    {
        if global.keyMenuLeft && !global.keyMenuRight
        {
            if image_index > indexMinimum
            {
                image_index = image_index - 1
            }
        }
    
        if(global.keyMenuRight && !global.keyMenuLeft)
        {
            if image_index < indexMaximum
            {
            image_index = image_index + 1
            }
        }
    }
}
