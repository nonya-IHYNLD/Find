draw_set_colour(c_white);
draw_set_font(ftn_game);  //Ensure font asset created

//Score Display
draw_text(32, 32, "Collected: " + string(collected_count) + " /" + string(target_count));

//Timer Display
var _seconds = ceil(time_remaining / game_get_speed);
draw_text(32, 64, "Time Left: " + string(_seconds));

if (game_over) {
	draw_set_halign(fa_center);
	draw_text(display_get_gui_width() / 2, display_get_gui_height() / 2, "Time Up!  You Lose!");
	draw_set_halign(fa_left);
}

if (game_won) {
	draw_set_halign(fa_center);
	draw_text(display_get_gui_width() / 2, display_get_gui_height() / 2, "You Win!");
	draw_set_halign(fa_left);
}