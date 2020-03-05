///scr_textbox("text", font, key_press, textSpeed);

/* 

//----------- ARGUMENTS -----------//

"text" - obviously the string you will pass onto the script
font - the kind of font you want to display on screen
key_press - button assigned to skip text/speed up, move to next slide, start/exit dialogue
textSpeed - how fast the text will print on screen

*/

//Initialize Vars

text = argument0;
font = argument1;
key_press = argument2;
textSpeed = argument3;
portrait = argument4;

//Normalize speed of text
if textSpeed <= 1 textSpeed = 1;
if textSpeed >= 15 textSpeed = 15;

//Set speed of text
global.maxPrintTimer = textSpeed;

//For measuring purposes
draw_set_font(font);

// sample text for spacing purposes
var sampleTxt = "sample";
var sTxt_height = string_height(sampleTxt)+2;

// Store the text in a cache "folder" for recalling purposes
if global.textCache == ""{
    global.textCache = text;
}

//Padding for inside dialogue box
var padding = 8;

//Max width & height
max_width = view_wview - (padding*2);
max_height = (view_hview/4)-(.05*(view_hview/4));

// Txt measurements
text_length = string_length(text);
text_width = string_width(text);

// Placeholder Variables
new_text = "";
current_textW = string_width(new_text);
ntl = string_length(new_text); // new_text_length

//Will group wall of text into paragraph (if necessary); Will only run once
if (text_width > max_width) {
    
    for (i=1; i < text_length+1; i++)
    {
        new_text += string_copy(text,i,1); //do not register enter presses, youre gonna need a temp var
        current_textW = string_width(new_text);
        ntl = string_length(new_text); // new text length
        
        if current_textW > max_width
        {
            if string_char_at(new_text,ntl) == " " {
                new_text = string_delete(new_text,ntl,1);
                new_text += "#";
                new_text += string_copy(text,i,1);
                ntl = string_length(new_text);
                if string_char_at(new_text,ntl) == " "
                {
                    new_text = string_delete(new_text,ntl,1);    
                }
            } else {
                for (n = ntl; string_char_at(new_text,n) != " "; n--){
                    var num = n;   
                }
                var temp_text =  string_copy(new_text,num,30);
                new_text =  string_delete(new_text,num,30);
                new_text += "#";
                new_text += temp_text;           
            }
        }
    }
}

//Conversion
if new_text != "" {text = new_text; text_width = string_width(text);}

//Variable for next part...
new_text_height = string_height_ext(text,sTxt_height,max_width);

//Will divide paragraph of text and place remaining characters into a placeholder variable
//will run as many times as necessary. The smaller the string argument passed, the fewer times this will run.
if (new_text_height > max_height){
    new_text = text; // conversion once more
    new_text_height = string_height_ext(new_text,sTxt_height,max_width);
    
    // put into place holder
     while(new_text_height > max_height)
     {
        var tempChar = string_copy(new_text,string_length(new_text),1);
        global.temp_placeholderTxt += tempChar;
        new_text = string_delete(new_text,string_length(new_text),1);
        new_text_height = string_height_ext(new_text,sTxt_height,max_width);
     }
     //Reverse order
     while(string_length(global.temp_placeholderTxt) > 0){
        global.placeholderTxt += string_copy(global.temp_placeholderTxt,string_length(global.temp_placeholderTxt),1);
        global.temp_placeholderTxt = string_delete(global.temp_placeholderTxt,string_length(global.temp_placeholderTxt),1);
     }
}

//Final Conversion
if new_text != "" {text = new_text;}

//If you can skip/speed up the text...
if !keyboard_check(key_press)
{
    if global.maxPrintTimer >= 1 global.maxPrintTimer = 0;
} else {
    global.maxPrintTimer = textSpeed;
} 

//text_length = string_length(text);

// Print stuff out from text
if global.printTimer <= 0 && (global.textIndex < text_length+1) {
    global.display_text += string_copy(text,global.textIndex,1);
    global.printTimer = global.maxPrintTimer;
    global.textIndex++;
}

//Move onto next slide of text or exit dialogue
if global.textIndex >= text_length && key_press
{
    global.display_text = "";
    text = global.placeholderTxt;
    global.placeholderTxt = "";
    global.temp_placeholderTxt = "";
    global.textIndex = 1;
    global.maxPrintTimer = textSpeed;
}

//Timer for speed at which characters print on screen
if global.printTimer > 0 global.printTimer--;

// Draw Variables
draw_set_font(font);

// Draw dialogue box
draw_set_color(c_black);
//draw_rectangle(view_xview,((view_yview+view_hview)-max_height)-(padding*1.5),view_wview,view_yview+view_hview,false);((view_yview+view_hview)-max_height)-(padding*1.5))
draw_sprite(s_menu_battle_introtext, 1, view_xview, (view_yview+352))

// Draw portrait
if argument4
{
    draw_sprite(argument4, 1, view_xview, (view_yview+352))
}

// Rectangle Borders
var bw = 4; // Border width
draw_set_color(c_white);
// draw_line_width(view_xview, ((view_yview+view_hview)-max_height)-(padding*1.5), view_xview, (view_yview+view_hview), bw);
// draw_line_width(view_xview-(bw/2), ((view_yview+view_hview)-max_height)-(padding*1.5), view_xview+view_wview, ((view_yview+view_hview)-max_height)-(padding*1.5), bw);
// draw_line_width(view_xview+view_wview-bw/2, ((view_yview+view_hview)-max_height)-(padding*1.5), view_xview+view_wview-bw/2, (view_yview+view_hview), bw);
// draw_line_width(view_xview, (view_yview+view_hview)-bw/2, view_xview+view_wview, (view_yview+view_hview)-bw/2, bw);



// Draw Text On Screen
draw_set_color(c_white);
if argument4 = s_hud_portrait_none
{
    draw_text_ext(view_xview+padding,((view_yview+view_hview)-max_height)-(padding/2),global.display_text,sTxt_height,max_width);
}
else
{
    draw_text_ext(view_xview+padding+128,((view_yview+view_hview)-max_height)-(padding/2),global.display_text,sTxt_height,max_width-128);
}


// Quit Dialogue/Textbox Event
if text == "" && global.placeholderTxt == ""{
    global.tboxActive = false;
    text = global.textCache;
    global.textCache = "";
    cinteract = 0
    o_character_overworld_fox.canMove = true;
    global.portrait = s_hud_portrait_none;
    global.com_channel += 1;
    if global.com_stay = 0
    {
        o_character_overworld_fox.alarm[1] = 10
    }
}

return text;
