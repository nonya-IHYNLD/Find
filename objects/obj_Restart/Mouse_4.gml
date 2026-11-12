// Inherit the parent event
event_inherited();
// Inherit the parent event
event_inherited();

global.paused = false;

with (Obj_button_parent) 
{
	instance_destroy();
}
	
	instance_activate_all();

room_goto(Level_select)