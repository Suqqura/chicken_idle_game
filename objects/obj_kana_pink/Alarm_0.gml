// Luo muna satunnaisesti kanan läheisyyteen
instance_create_layer(x + irandom_range(-16, 16), y + irandom_range(-16, 16), "EggLayer", obj_egg);

// Aseta uusi hälytys (munien luonti uudelleen 60 sekunnin kuluttua)
alarm[0] = room_speed * 60; // Munii taas minuutin kuluttua
