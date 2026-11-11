with (obj_game_controller) {
	collected_count += 1;
	time_remaining += 5 * game_get_speed(gamespeed_fps);
	if (collected_count >= target_count) {
	}
		//room_goto(rm_win)  if seperate win screen
}

instance_destroy();