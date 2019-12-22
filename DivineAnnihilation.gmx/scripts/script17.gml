/*
argument 1 = required_channel!!!NOT USED PLEASE IGNORE!!!
argument 2 = finishing_channel
argument 3 = destroy_after_use
argument 4 = has_text
argument 5 = text
argument 6 = portrait
argument 7 = textbox_delay
argument 8 = moves_object
argument 9 = move_x
argument 10 = move_y
argument 11 = move_speed
argument 12 = transmit_onactive
*/

if argument2 = 0
{
    global.com_channel = 0;
    global.com_stay = 0;
}

else
{
    global.com_stay = 1;
}

instance_destroy()
