/// Chicken creation

/// @constructor Chicken
function Chicken() constructor {
    // Movement
    dir = irandom(360);
    direction_change_rate = irandom_range(30, 120); // Time before direction changes

    // State Management
    state = "idle";
    state_timer = irandom_range(240, 480);

    // Sprite and Appearance
    sprite = spr_kana; // Varmista, että tämä sprite on olemassa
    blend = c_white; // Default color
    xscale = 1; // Default size
    yscale = 1;

    // Animation Frames
    frame_idle_start = 0;
    frame_idle_end = 3;
    frame_walking_start = 4;
    frame_walking_end = 7;
    frame_pecking_start = 8;
    frame_pecking_end = 11;

    // Gameplay
    type = "standard";
    egg_lay_timer = 30; // Default egg laying frequency
    egg_value_multiplier = 1.0; // Default egg value multiplier
}



/// @constructor golden_chicken
/// @description Specialized golden chicken with slower speed and custom frames.

function golden_chicken() : Chicken() constructor {
	
    type = "golden";
	state_timer = irandom_range(300, 600);
    blend = make_color_rgb(255, 215, 0); // Golden color (R: 255, G: 215, B: 0)
	
	egg_lay_timer = 60; // Default egg laying frequency
    egg_value_multiplier = 5.0; // Default egg value multiplier
}


/// @constructor fast_chicken
/// @description Specialized fast chicken with faster movement.

function fast_chicken() : Chicken() constructor {

    type = "fast";
	state_timer = irandom_range(60, 120);
    blend = #FFC0CB; // Red color (R: 255, G: 0, B: 0)
	
	egg_lay_timer = 10; // Default egg laying frequency
    egg_value_multiplier = 0.5; // Default egg value multiplier
}



