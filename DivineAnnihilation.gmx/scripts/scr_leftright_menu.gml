// Sroll menu left and right by changing the image index
// Define variables
var kLeft, kRight, kSelect, kBack;

kLeft = keyboard_check_pressed(vk_left);
kRight = keyboard_check_pressed(vk_right);
kSelect = keyboard_check_pressed(ord("X"));
kBack = keyboard_check_pressed(ord("Z"));
mmin = argument0
mmax = argument1


// Left and right scrolling based on increasing and decreasing image index
if global.menuactive = 1
{
    if(kLeft && !kRight)
    {
        if image_index > mmin
        {
        image_index = image_index - 1
        }
    }

    if(kRight && !kLeft)
    {
        if image_index < mmax
        {
        image_index = image_index + 1
        }
    }
}
