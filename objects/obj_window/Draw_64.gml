/// Draw GUI Event for obj_window

// Ensure the nine-sliced sprite exists
if (sprite_exists(spr_window)) {
    // Calculate the drawing region
    var draw_x1 = x - window_width / 2;
    var draw_y1 = y - window_height / 2;
    var draw_x2 = x + window_width / 2;
    var draw_y2 = y + window_height / 2;

    // Draw the nine-sliced window
    draw_sprite_stretched(spr_window, 0, draw_x1, draw_y1, draw_x2 - draw_x1, draw_y2 - draw_y1);
}

// Draw title text, if specified
if (title != "") {
    draw_set_color(c_white);
    draw_text(x, y - window_height / 2 + 20, title);
}
