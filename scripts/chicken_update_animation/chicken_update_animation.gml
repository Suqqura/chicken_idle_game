/// @function chicken_update_animation(chicken)
/// @description Updates the chicken's sprite based on its state.

function chicken_update_animation(_chicken) {
    switch (_chicken.state) {
        case "idle":
            sprite_index = spr_kana; // Chicken sprite
            image_speed = 0.2;       // Use the sprite's natural FPS at 20% speed
            image_index = clamp(image_index, _chicken.frame_idle_start, _chicken.frame_idle_end);
            break;

        case "walking":
            sprite_index = spr_kana;
            image_speed = 0.5;       // Walking animation speed (50% of the sprite's FPS)
            image_index = clamp(image_index, _chicken.frame_walking_start, _chicken.frame_walking_end);
            break;

        case "pecking":
            sprite_index = spr_kana;
            image_speed = 0.3;       // Pecking animation speed (30% of the sprite's FPS)
            image_index = clamp(image_index, _chicken.frame_pecking_start, _chicken.frame_pecking_end);
            break;

        default:
            image_speed = 0;         // Stop animation in invalid states
            break;
    }
}
