/// Step Event for obj_kana

// Päivitä tila-ajastin
chicken.state_timer -= 1;
if (chicken.state_timer <= 0) {
    chicken.state_timer = chicken.state_timer; // Resetoi ajastin
    chicken.state = choose("idle", "walking", "pecking"); // Valitse satunnainen tila
}

// State Management
switch (chicken.state) {
    case "walking":
	    speed = 1.5;

	    // Liikkuminen
	    x += lengthdir_x(speed, direction);
	    y += lengthdir_y(speed, direction);

	    // Törmäystarkistus
	    var next_x = x + lengthdir_x(speed, direction);
	    var next_y = y + lengthdir_y(speed, direction);
	    if (place_meeting(next_x, next_y, obj_fence)) {
	        direction += irandom_range(120, 240); // Vaihda suunta
	    }

	    // Pieni suunnan vaihtelu
	    direction += irandom_range(-5, 5);
		
		// Sprite-käännös liikesuunnan (direction) perusteella
	    if (direction > 90 && direction < 270) {
	        image_xscale = -1; // Vasemmalle
	    } else {
	        image_xscale = 1;  // Oikealle
	    }

	    // Walking animation
	    if (image_index < chicken.frame_walking_start || image_index > chicken.frame_walking_end) {
	        image_index = chicken.frame_walking_start;
	    }
	    image_speed = 0.2;
	    
	    break;

    case "pecking":
        // Liike pois päältä
        speed = 0;

        // Pecking animation
        image_speed = 0.1;
        if (image_index < chicken.frame_pecking_start || image_index > chicken.frame_pecking_end) {
            image_index = chicken.frame_pecking_start;
        }
        break;

    case "idle":
        // Liike pois päältä
        speed = 0;

        // Idle animation
        image_speed = 0.05;
        if (image_index < chicken.frame_idle_start || image_index > chicken.frame_idle_end) {
            image_index = chicken.frame_idle_start;
        }
        break;
}
