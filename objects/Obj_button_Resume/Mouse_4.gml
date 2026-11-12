// Inherit the parent event
event_inherited();

global.paused = false;

with (Obj_button_parent) 
{
	instance_destroy();
}
	
	instance_activate_all();