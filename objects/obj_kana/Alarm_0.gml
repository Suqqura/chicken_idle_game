// Create egg close to chicken
instance_create_layer(x + irandom_range(-16, 16), y + irandom_range(-16, 16), "EggLayer", obj_egg);

// Create new timer to lay a egg in a minute
alarm[0] = room_speed * irandom_range(5, 600); // Munii taas 5s - 10 min kuluttua
