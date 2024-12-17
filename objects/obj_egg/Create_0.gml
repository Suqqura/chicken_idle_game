// Create Event
/// Create Event for obj_egg

if (variable_instance_exists(self, "chicken") && chicken != noone) {
    money_value = 10 * chicken.egg_value_multiplier; // Arvo perustuu kanan arvoon
} else {
    money_value = 10; // Varmuuden vuoksi default-arvo
}


alarm[0] = room_speed * 30; // Set alarm for 1 minute (60 seconds)
