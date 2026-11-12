with (obj_game_controller) {
	collected_count += 1;
	
	if (collected_count >= target_count) {
		game_won = true;
		
	}
}

instance_destroy();