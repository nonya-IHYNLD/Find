if (global.paused)
{
    var cam = view_camera[0];

    var cam_x = camera_get_view_x(cam);
    var cam_y = camera_get_view_y(cam);

    var cam_w = camera_get_view_width(cam);
    var cam_h = camera_get_view_height(cam);

    var bg_w = sprite_get_width(newbuttons_background);
    var bg_h = sprite_get_height(newbuttons_background);

    draw_sprite(
        newbuttons_background,
        0,
        cam_x + (cam_w - bg_w) / 2,
        cam_y + (cam_h - bg_h) / 2
    );
}