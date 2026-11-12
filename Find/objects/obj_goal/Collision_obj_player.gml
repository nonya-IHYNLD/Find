// 1. Add to your global fossil counter (opens obj_specialwall when reached)
global.fossils_collected += 1;

// 2. Add extra time bonus (+5 seconds per fossil)
with (obj_game_controller) {
    time_remaining += 5 * game_get_speed(gamespeed_fps);
}

// 3. Destroy this fossil so it can't be collected twice
instance_destroy();