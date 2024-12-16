/// Draw GUI Event for obj_hud

// Set text properties
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);

// Draw money and chicken counter
draw_text(10, 10, "Money: " + string(global.money));
draw_text(10, 40, "Chickens: " + string(global.total_chickens) + " / " + string(global.max_chickens));
