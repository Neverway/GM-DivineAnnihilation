// Sroll menu up and down by changing the image index
// Define variables
var kUp, kDown, kSelect, kBack;

kUp = keyboard_check_pressed(vk_up);
kDown = keyboard_check_pressed(vk_down);
kSelect = keyboard_check_pressed(ord("X"));
kBack = keyboard_check_pressed(ord("Z"));
mmin = argument0
mmax = argument1


// Up and down scrolling based on increasing and decreasing image index
if global.menuactive = 1
{
    if(kUp && !kDown)
    {
        if image_index > mmin
        {
        image_index = image_index - 1
        }
    }
    
    if(kDown && !kUp)
    {
        if image_index < mmax
        {
        image_index = image_index + 1
        }
    }
}
