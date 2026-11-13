draw_set_colour(c_white);

// Draw GUI Event of obj_game_controller (Line 5)
draw_text(32, 32, "Fossils: " + string(global.fossils_collected) + " / " + string(global.total_fossils));

//Timer Display
var _total_seconds = time_remaining / game_get_speed(gamespeed_fps);
var _minutes = floor(_total_seconds / 60);
var _seconds = floor(_total_seconds) % 60;
var _time_string = string(_minutes) + ":" + (_seconds < 10 ? "0" : "") + string(_seconds);
draw_text(32, 64, "Time Left: " + _time_string);

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