if (!game_over && !game_won) {
	//Decrease Timer
	time_remaining -= 1;

	//Check for Loss condition
	if (time_remaining <= 0) {
		time_remaining = 0;
		game_over = true;
		
		}
	}