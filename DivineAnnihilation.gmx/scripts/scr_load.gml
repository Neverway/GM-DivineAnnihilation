show_debug_message("Loading file: ")
show_debug_message(string(argument0))

/////////////////////////////////////////////////////////////////////////
if argument0 = "profile1"
{
if (file_exists("profile1.sav"))
{
    ini_open("profile1.sav");

// Save party
    ini_read_string("profile1","name","FOX");
    global.name = ini_read_string("profile1","name","FOX");
    
// Save party
    ini_read_real("profile1","partymember1",0);
    ini_read_real("profile1","partymember2",0);
    global.partymember1 = ini_read_real("profile1","partymember1",0);
    global.partymember2 = ini_read_real("profile1","partymember2",0);
    
// Load room
    var SavedRoom = ini_read_real("profile1","room",r_roomcheck);
    global.savedx = ini_read_real("profile1","savedx",0);
    global.savedy = ini_read_real("profile1","savedy",0);
    o_system_variblecarrier.alarm[0] = 10;


// Load hp
    global.hp = ini_read_real("profile1","health",99);
    
// Load gold
    global.gold = ini_read_real("profile1","gold",0);
    
// Load level
    global.level = ini_read_real("profile1","level",0);
    
    
    show_debug_message("Attempting to load file.")
    room_goto(SavedRoom);
    
// Load inventory
    global.inve1 = ini_read_string("profile1","inv1","---");
    global.inve2 = ini_read_string("profile1","inv2","---");
    global.inve3 = ini_read_string("profile1","inv3","---");
    global.inve4 = ini_read_string("profile1","inv4","---");
    global.inve5 = ini_read_string("profile1","inv5","---");

// Load weapons
    global.wepo1 = ini_read_string("profile1","wpn1","---");
    global.wepo2 = ini_read_string("profile1","wpn2","---");
    global.wepo3 = ini_read_string("profile1","wpn3","---");
    global.wepo4 = ini_read_string("profile1","wpn4","---");
    global.wepo5 = ini_read_string("profile1","wpn5","---");
    ini_close();
}
else
{
    script_execute(scr_create_save, "profile1")
    show_debug_message("Unable to load file!")
}
}


/////////////////////////////////////////////////////////////////////////
if argument0 = "profile2"
{
if (file_exists("profile2.sav"))
{
    ini_open("profile2.sav");

// Save party
    ini_read_string("profile2","name","FOX");
    global.name = ini_read_string("profile2","name","FOX");
    
// Save party
ini_read_real("profile2","partymember1",0);
ini_read_real("profile2","partymember2",0);
global.partymember1 = ini_read_real("profile2","partymember1",0);
global.partymember2 = ini_read_real("profile2","partymember2",0);
    
// Load room
    var SavedRoom = ini_read_real("profile2","room",r_roomcheck);
    global.savedx = ini_read_real("profile2","savedx",0);
    global.savedy = ini_read_real("profile2","savedy",0);
    o_system_variblecarrier.alarm[0] = 10;

// Load hp
    global.hp = ini_read_real("profile2","health",99);
    
// Load gold
    global.gold = ini_read_real("profile2","gold",0);
    
// Load level
    global.level = ini_read_real("profile2","level",0);
    
    
    show_debug_message("Attempting to load file.")    
    room_goto(SavedRoom);
    
    
    
// Load inventory
    global.inve1 = ini_read_string("profile2","inv1","---");
    global.inve2 = ini_read_string("profile2","inv2","---");
    global.inve3 = ini_read_string("profile2","inv3","---");
    global.inve4 = ini_read_string("profile2","inv4","---");
    global.inve5 = ini_read_string("profile2","inv5","---");

// Load weapons
    global.wepo1 = ini_read_string("profile2","wpn1","---");
    global.wepo2 = ini_read_string("profile2","wpn2","---");
    global.wepo3 = ini_read_string("profile2","wpn3","---");
    global.wepo4 = ini_read_string("profile2","wpn4","---");
    global.wepo5 = ini_read_string("profile2","wpn5","---");
    ini_close();
}
else
{
    script_execute(scr_create_save, "profile2")
}
}


/////////////////////////////////////////////////////////////////////////
if argument0 = "profile3"
{
if (file_exists("profile3.sav"))
{
    ini_open("profile3.sav");

// Save party
    ini_read_string("profile3","name","FOX");
    global.name = ini_read_string("profile3","name","FOX");
    
// Save party
ini_read_real("profile3","partymember1",0);
ini_read_real("profile3","partymember2",0);
global.partymember1 = ini_read_real("profile3","partymember1",0);
global.partymember2 = ini_read_real("profile3","partymember2",0);
    
// Load room
    var SavedRoom = ini_read_real("profile3","room",r_roomcheck);
    global.savedx = ini_read_real("profile3","savedx",0);
    global.savedy = ini_read_real("profile3","savedy",0);
    o_system_variblecarrier.alarm[0] = 10;

// Load hp
    global.hp = ini_read_real("profile3","health",99);
    
// Load gold
    global.gold = ini_read_real("profile3","gold",0);
    
// Load level
    global.level = ini_read_real("profile3","level",0);
    
    
    show_debug_message("Attempting to load file.")
    room_goto(SavedRoom);
    
// Load inventory
    global.inve1 = ini_read_string("profile3","inv1","---");
    global.inve2 = ini_read_string("profile3","inv2","---");
    global.inve3 = ini_read_string("profile3","inv3","---");
    global.inve4 = ini_read_string("profile3","inv4","---");
    global.inve5 = ini_read_string("profile3","inv5","---");

// Load weapons
    global.wepo1 = ini_read_string("profile3","wpn1","---");
    global.wepo2 = ini_read_string("profile3","wpn2","---");
    global.wepo3 = ini_read_string("profile3","wpn3","---");
    global.wepo4 = ini_read_string("profile3","wpn4","---");
    global.wepo5 = ini_read_string("profile3","wpn5","---");
    ini_close();
}
else
{
    script_execute(scr_create_save, "profile3")
}
}


/////////////////////////////////////////////////////////////////////////
if argument0 = "profile4"
{
if (file_exists("profile4.sav"))
{
    ini_open("profile4.sav");

// Save party
    ini_read_string("profile4","name","FOX");
    global.name = ini_read_string("profile4","name","FOX");
    
// Save party
ini_read_real("profile4","partymember1",0);
ini_read_real("profile4","partymember2",0);
global.partymember1 = ini_read_real("profile4","partymember1",0);
global.partymember2 = ini_read_real("profile4","partymember2",0);
    
// Load room
    var SavedRoom = ini_read_real("profile4","room",r_roomcheck);
    global.savedx = ini_read_real("profile4","savedx",0);
    global.savedy = ini_read_real("profile4","savedy",0);
    o_system_variblecarrier.alarm[0] = 10;

// Load hp
    global.hp = ini_read_real("profile4","health",99);
    
// Load gold
    global.gold = ini_read_real("profile4","gold",0);
    
// Load level
    global.level = ini_read_real("profile4","level",0);
    
    
    show_debug_message("Attempting to load file.")
    room_goto(SavedRoom);
    
// Load inventory
    global.inve1 = ini_read_string("profile4","inv1","---");
    global.inve2 = ini_read_string("profile4","inv2","---");
    global.inve3 = ini_read_string("profile4","inv3","---");
    global.inve4 = ini_read_string("profile4","inv4","---");
    global.inve5 = ini_read_string("profile4","inv5","---");

// Load weapons
    global.wepo1 = ini_read_string("profile4","wpn1","---");
    global.wepo2 = ini_read_string("profile4","wpn2","---");
    global.wepo3 = ini_read_string("profile4","wpn3","---");
    global.wepo4 = ini_read_string("profile4","wpn4","---");
    global.wepo5 = ini_read_string("profile4","wpn5","---");
    ini_close();
}
else
{
    script_execute(scr_create_save, "profile4")
}
}

