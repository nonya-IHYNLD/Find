
if (!instance_exists(Obj_player)) exit;

// Get camera information
var cam = view_camera[0];

var cam_x = camera_get_view_x(cam);
var cam_y = camera_get_view_y(cam);
var cam_w = camera_get_view_width(cam);
var cam_h = camera_get_view_height(cam);

// Get GUI dimensions
var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

// Calculate player's screen position
var px = (Obj_player.x - cam_x) * (gui_w / cam_w);
var py = (Obj_player.y - cam_y) * (gui_h / cam_h);

// Vision radius
var vision = 130 * (gui_w / cam_w);

// Draw darkness
draw_set_alpha(1);
draw_set_color(c_black);
draw_rectangle(0, 0, gui_w, gui_h, false);

// Erase darkness around player
gpu_set_blendmode_ext(bm_zero, bm_inv_src_alpha);

draw_set_color(c_white);

// Create a soft vision gradient
var steps = 30;

for (var i = steps; i >= 1; i--)
{
    var radius = vision * (i / steps);

    var alpha = 1 - (i / steps);

    draw_set_alpha(alpha);

    draw_ellipse(
        px - radius,
        py - radius,
        px + radius,
        py + radius,
        false
    );
}

// Reset drawing settings
gpu_set_blendmode(bm_normal);
draw_set_alpha(1);
draw_set_color(c_white);
