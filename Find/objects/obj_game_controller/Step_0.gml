// 1. Timer and Loss Condition Check
if (!game_over && !game_won) {
	// Decrease Timer
	time_remaining -= 1;

	// Check for Loss condition
	if (time_remaining <= 0) {
		time_remaining = 0;
		game_over = true;
		// room_restart();
	}
}
	
// 2. Open the wall when required fossils are collected (currently set to 1 for testing)
if (!global.wall_opened && global.fossils_collected >= global.fossils_required_to_open) {
    global.wall_opened = true;
    
    // Open the wall using your correct object name
    with (obj_specialwall) {
        instance_destroy();
    }
    
    show_debug_message("Fossil collected! Hidden walls opened!");
}

// 3. Check for Win Condition (collecting all fossils)
if (!game_won && global.fossils_collected >= global.total_fossils) {
    game_won = true;
    
    // Uncomment this once you have your win room ready:
    // room_goto(rm_win);
    
    show_debug_message("All fossils collected! You win!");
}