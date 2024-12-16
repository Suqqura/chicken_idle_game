// Draw the button sprite (nine-sliced)
if (sprite_index != -1) {
    draw_sprite_stretched(sprite_index, 0, x - size_x / 2, y - size_y / 2, size_x, size_y);
}

// options
// draw_set_font(fnt_button);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);

// draw the button text
draw_text(x, y, button_text);
