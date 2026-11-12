//Reset Game States and Timer into next level.

if (room == rm_level_2) {
	game_won = false;
	game_over = false;
	collected_count = 0;
	time_remaining = 180 * game_get_speed(gamespeedfps);
}