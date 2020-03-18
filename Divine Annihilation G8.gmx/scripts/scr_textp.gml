/// scr_text("Text", Portrait, Speed, X, Y);

text = instance_create(argument3, argument4, obj_system_text);

with text
{
    padding = 16; // Padding inside the text box
    maxLength = view_wview[0]; // Max length a sentance can be before it wraps around
    text = argument0; // The text that will apear in the textbox
    textSpeed = argument2; // The speed in which the text is drawn in the textbox
    font = fnt_menu; // The Font used in the textbox
    
    text_length = string_length(text); // Check if the text has finished printing
    font_size = font_get_size(font); // Get the size of the font to scale to the textbox
    draw_set_font(font);
    
    text_width = string_width_ext(text, font_size + (font_size / 2), maxLength); // Check text width
    text_height = string_height_ext(text, font_size + (font_size / 2), maxLength); // Check text height
    
    textBox_Width = text_width + (padding * 2); // Set text box width
    textBox_Height = text_height + (padding * 2); // Set text box height    
}
