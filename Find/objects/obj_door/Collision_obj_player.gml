with (obj_game_controller) {
	if (!game_over && !game_won){
		if (collected_count >= target_count) {
			game_won = true;
			//room_goto_next();  
			//room_goto(rm_level_2);
		} else {
			show_debug_message("Door is locked! You need more items.");
		}
	}
}