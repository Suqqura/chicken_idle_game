// Tarkistetaan, että global.money on määritelty
if (!variable_global_exists("money")) {
    global.money = 0; // Jos ei ole, alustetaan se
}

// Piirretään raha-arvo
draw_text(64, 10, "Money: " + string(global.money));
