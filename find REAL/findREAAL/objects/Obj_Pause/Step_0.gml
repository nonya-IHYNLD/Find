if (keyboard_check_pressed(vk_escape))
{
    if (!global.paused)
    {
        global.paused = true;

        // Freeze the game, keeping this controller active
        instance_deactivate_all(true);

        // Get current camera position and dimensions
        var cam = view_camera[0];

        var cam_x = camera_get_view_x(cam);
        var cam_y = camera_get_view_y(cam);

        var cam_w = camera_get_view_width(cam);
        var cam_h = camera_get_view_height(cam);

        // Find screen centre in room coordinates
        var center_x = cam_x + cam_w / 2;
        var center_y = cam_y + cam_h / 2;

  // Button dimensions after scaling
var btn_w = 475 * 0.4;
var btn_h = 263 * 0.4;

// Create Resume
var btn_resume = instance_create_layer(
    center_x - btn_w / 2,
    center_y - 100 - btn_h / 2,
    "Instances", Obj_button_Resume
);

btn_resume.image_xscale = 0.4;
btn_resume.image_yscale = 0.4;
btn_resume.depth = -1000;


// Create Restart
var btn_restart = instance_create_layer(
    center_x - btn_w / 2,
    center_y + 20 - btn_h / 2,
    "Instances", obj_Restart
);

btn_restart.image_xscale = 0.4;
btn_restart.image_yscale = 0.4;
btn_restart.depth = -1000;


// Create Quit
var btn_quit = instance_create_layer(
    center_x - btn_w / 2,
    center_y + 140 - btn_h / 2,
    "Instances", Obj_button_quit_1
);

btn_quit.image_xscale = 0.4;
btn_quit.image_yscale = 0.4;
btn_quit.depth = -1000;
		
    }
    else
    {
        global.paused = false;

        with (Obj_button_Resume) instance_destroy();
        with (obj_Restart) instance_destroy();
        with (Obj_button_quit_1) instance_destroy();

        instance_activate_all();
    }
}