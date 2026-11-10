//Disable alpha blending
gpu_set_blendenable (false);

if (pause) //draw frozen image to screen while paused
{
	surface_set_target(application_surface);
		if(surface_exists(pauseSurf)) draw_surface(pauseSurf, 0,0);
		else //restore from buffer if we lost the surface
			{
				pauseSurf = surface_create(resW, resH);
				buffer_set_surface(pauseSurfBuffer, pauseSurf, 0);
			}
		surface_reset_target();
}

if (keyboard_check_pressed(ord("P"))) //toggle pause
{
	if(!pause) //pause now
	{
		pause = true;
		
		//deactivate everything other than this instance
		instance_deactivate_all(true);
		
		//capture this game moment (won't capture draw GUI contents though)
		pauseSurf = surface_create(resW, resH)
		surface_set_target(pauseSurf);
			draw_surface(application_surface)
			