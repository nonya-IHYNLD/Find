with (obj_game_controller) {
	collected_count += 1;
	
	if (collected_count >= target_count) {
		game_won = true;
		//room_goto(rm_win)  if seperate win screen
	}
}

instance_destroy();