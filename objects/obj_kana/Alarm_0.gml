/// Alarm[0] Event for obj_kana

// Tarkista, että muna-instanssien määrä ei ylitä rajaa
if (instance_number(obj_egg) < 50) {
    // Luo muna ja tallenna sen viittaus muuttujaan
    var new_egg = instance_create_layer(x + irandom_range(-16, 16), y + irandom_range(-16, 16), "EggLayer", obj_egg);
    
    // Varmista, että muna luotiin oikein
    if (instance_exists(new_egg)) {
        new_egg.chicken = self;          // Anna viittaus kanaan
        new_egg.image_blend = chicken.blend; // Aseta munan väri samanlaiseksi kuin kanalla
    }
}

// Aseta ajastin uudelleen
alarm[0] = room_speed * chicken.egg_lay_timer;
