/// @function chicken_update_behavior(chicken)
/// @function chicken_update_behavior(chicken)
/// @description Updates the chicken's behavior and movement.

function chicken_update_behavior(_chicken) {
    // State timer countdown
    _chicken.state_timer--;

    // State transitions
    if (_chicken.state_timer <= 0) {
        _chicken.state = choose("idle", "walking", "pecking"); // Random state
        _chicken.state_timer = irandom_range(60, 120); // Reset timer

        // Set speed and direction for walking
        if (_chicken.state == "walking") {
            _chicken.speed = 1;
            _chicken.direction = irandom(360);
        } else {
            _chicken.speed = 0; // Stop movement in other states
        }
    }

    // Movement logic: Calculate next position only when walking
    if (_chicken.state == "walking") {
        var next_x = _chicken.x + lengthdir_x(_chicken.speed, _chicken.direction);
        var next_y = _chicken.y + lengthdir_y(_chicken.speed, _chicken.direction);

        // Collision check: Prevent walking through fences
        if (!place_meeting(next_x, next_y, obj_fence)) {
            _chicken.x = next_x;
            _chicken.y = next_y;
        } else {
            _chicken.direction += irandom_range(90, 180); // Turn around on collision
        }
    }
}
