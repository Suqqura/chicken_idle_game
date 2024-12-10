/// State management and movement logic

// Reduce the state timer
state_timer--;

// Change state when the timer reaches 0
if (state_timer <= 0) {
    if (state == "idle") {
        // Switch to walking
        state = "walking";
        speed = 1; // Set walking speed
        direction = irandom(360); // Random direction
        state_timer = irandom_range(60, 120); // Set new timer
    } 
    else if (state == "walking") {
        // Switch to pecking
        state = "pecking";
        speed = 0; // Stop movement
        state_timer = irandom_range(130, 160); // Set pecking timer
    } 
    else if (state == "pecking") {
        // Switch back to idle
        state = "idle";
        speed = 0; // Stop movement
        state_timer = irandom_range(130, 160); // Set idle timer
    }
}


//switch (state) {
    
//	case chiken_state.walking:
//        // Switch to pecking
//        state = choose("pecking", "pecking", "pecking");
//        speed = 0; // Stop movement
//        state_timer = irandom_range(130, 160); // Set pecking timer
//        break;
		
//	case "pecking":
//        // code here
//        break;
//	case "pecking":
//        // code here
//        break;
//    default:
//        // code here
//        break;
//}



// Perform actions based on the current state
if (state == "walking") {
    // Calculate the next position
    var next_x = x + lengthdir_x(speed, direction);
    var next_y = y + lengthdir_y(speed, direction);

    // Check for collision with fences
    if (place_meeting(next_x, next_y, obj_fence)) {
        // Change direction randomly upon collision
        direction += irandom_range(120, 240);
    } 
    else {
        // Update position if no collision
        x = next_x;
        y = next_y;
    }

    // Walking animation
    if (image_index < frame_walking_start || image_index > frame_walking_end) {
        image_index = frame_walking_start; // Reset to walking animation start frame
    }
}
else if (state == "pecking") {
    // Optional logic for pecking

    // Pecking animation
    if (image_index < frame_pecking_start || image_index >= frame_pecking_end) {
        image_index = frame_pecking_start; // Reset to pecking animation start frame
    }
}
else if (state == "idle") {
    // Idle animation
    if (image_index < frame_idle_start || image_index > frame_idle_end) {
        image_index = frame_idle_start; // Reset to idle animation start frame
    }
}

// Ensure the sprite doesn't rotate vertically, only flip horizontally
if (state == "walking" && speed > 0) {
    if (lengthdir_x(1, direction) > 0) {
        image_xscale = 1; // Facing right
    } else {
        image_xscale = -1; // Facing left
    }
}
