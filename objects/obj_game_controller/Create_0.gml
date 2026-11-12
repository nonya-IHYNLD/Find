// Create Event of obj_game_controller

// Fossil tracking
global.fossils_collected = 0;           
global.total_fossils = 10;              
global.fossils_required_to_open = 1;    
global.wall_opened = false;             

// Timer Setup (3 minutes = 180 seconds)
time_remaining = 180 * game_get_speed(gamespeed_fps);
game_over = false;
game_won = false;