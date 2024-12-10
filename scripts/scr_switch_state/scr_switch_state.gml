/// Change state, set animation, and initialize timer
/// @param new_state The new state to switch to
/// @param timer_min Minimum timer duration
/// @param timer_max Maximum timer duration
function switch_state(new_state, timer_min, timer_max) {
    state = new_state; // Update state
    state_timer = irandom_range(timer_min, timer_max); // Set random timer
 /*
    // Handle logic and animations for the current state
    switch (state) {
        case chicken_state.idle:
            speed = 0; // Stop moving
            if (image_index < frame_idle_start || image_index > frame_idle_end) {
                image_index = frame_idle_start; // Start idle animation
            }
            image_speed = 0.1; // Idle animation speed
            break;

        case chicken_state.walking:
            speed = 1; // Start moving
            direction = irandom(360); // Choose a random direction
            if (image_index < frame_walking_start || image_index > frame_walking_end) {
                image_index = frame_walking_start; // Start walking animation
            }
            image_speed = 0.2; // Walking animation speed
            break;

        case chicken_state.pecking:
            speed = 0; // Stop moving
            if (image_index < frame_pecking_start || image_index > frame_pecking_end) {
                image_index = frame_pecking_start; // Start pecking animation
            }
            image_speed = 0.15; // Pecking animation speed
            break;
			*/
    
}
