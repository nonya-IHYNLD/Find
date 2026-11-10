

if (!pause) exit;

// GUI dimensions
var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

// Centre
var cx = gui_w / 2;
var cy = gui_h / 2;

// Background darkening
draw_set_alpha(0.55);
draw_set_color(c_black);
draw_rectangle(0, 0, gui_w, gui_h, false);

// Menu panel
draw_set_alpha(1);
draw_set_color(make_color_rgb(24, 24, 32));

draw_roundrect(
    cx - 170,
    cy - 125,
    cx + 170,
    cy + 155,
    false
);

// Title
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(cx, cy - 85, "PAUSED");

// Button settings
var btn_w = 220;
var btn_h = 45;
var gap = 15;

var labels = ["RESUME", "RESTART", "MAIN MENU"];

var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

for (var i = 0; i < 3; i++)
{
    var bx = cx;
    var by = cy - 20 + i * (btn_h + gap);

    var hovered = point_in_rectangle(
        mx, my,
        bx - btn_w/2,
        by - btn_h/2,
        bx + btn_w/2,
        by + btn_h/2
    );

    // Button background
    if (hovered)
        draw_set_color(make_color_rgb(100, 75, 130));
    else
        draw_set_color(make_color_rgb(48, 48, 62));

    draw_roundrect(
        bx - btn_w/2,
        by - btn_h/2,
        bx + btn_w/2,
        by + btn_h/2,
        false
    );

    // Button text
    draw_set_color(c_white);
    draw_text(bx, by, labels[i]);
}

// Reset drawing settings
draw_set_alpha(1);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

