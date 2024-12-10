/// Reduce the state timer
state_timer--;

// Handle state-specific behavior
switch (state) {
    case chicken_state.idle:
        if (state_timer <= 0) {
            // Randomly switch to another state
            switch_state(choose(chicken_state.idle, chicken_state.walking, chicken_state.pecking), 90, 150);
        }
		speed = 0; // Stop moving
        if (image_index < frame_idle_start || image_index > frame_idle_end) {
            image_index = frame_idle_start; // Start idle animation
        }
        image_speed = 0.1; // Idle animation speed
        break;

    case chicken_state.walking:
        // Movement logic
        var next_x = x + lengthdir_x(speed, direction);
        var next_y = y + lengthdir_y(speed, direction);

        if (place_meeting(next_x, next_y, obj_fence)) {
            direction += irandom_range(120, 240); // Change direction on collision
			direction = direction mod 360; // Ensure direction stays within 0–360
			switch_state(choose(chicken_state.idle, chicken_state.walking, chicken_state.pecking), 120, 240);
			break;
        } else {
            x = next_x;
            y = next_y; // Update position
        }
		
		if (lengthdir_x(1, direction) > 0) {
			    image_xscale = 1; // Facing right
			} else {
			    image_xscale = -1; // Facing left
			}
        if (state_timer <= 0) {
            switch_state(choose(chicken_state.walking, chicken_state.idle, chicken_state.pecking), 120, 240);
			direction = irandom(360); // Choose a random direction
			
			
        }
        speed = 1; // Start moving
        
        if (image_index < frame_walking_start || image_index > frame_walking_end) {
            image_index = frame_walking_start; // Start walking animation
        }
        image_speed = 0.4; // Walking animation speed
        break;

    case chicken_state.pecking:
        if (state_timer <= 0) {
            switch_state(choose(chicken_state.pecking, chicken_state.idle, chicken_state.walking), 90, 150);
        }
        speed = 0; // Stop moving
        if (image_index < frame_pecking_start || image_index > frame_pecking_end) {
            image_index = frame_pecking_start; // Start pecking animation
        }
        image_speed = 0.2; // Pecking animation speed
        break;

    default:
        switch_state(chicken_state.idle, 90, 150);
        break;
}
