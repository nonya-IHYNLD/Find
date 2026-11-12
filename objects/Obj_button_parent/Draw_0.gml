draw_self();

draw_set_font(fnt_menu);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(
    x + sprite_get_width(sprite_index) * image_xscale / 2,
    y + sprite_get_height(sprite_index) * image_yscale / 2,
    button_text
);

draw_set_halign(fa_left);
draw_set_valign(fa_top);