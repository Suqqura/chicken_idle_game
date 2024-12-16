/// Create Event for obj_button_buy_chicken

// Inherit from parent
event_inherited();

size_x = 200; // Width of the button
size_y = 32;  // Height of the button

// Set the button's text
button_text = "Buy Chicken (50)";

// Define what happens when the button is clicked
activate_button = function() {
    if (global.total_chickens >= global.max_chickens) {
        show_debug_message("Maximum chickens reached! Cannot buy more.");
        return; // Stop here if max chickens is reached
    }

    if (global.money >= 50) {
        global.money -= 50; // Deduct cost
        var new_chicken = instance_create_layer(room_width / 2, room_height / 2, "ChickenLayer", obj_kana);
        
        // Ensure the instance is valid before setting variables
        if (instance_exists(new_chicken)) {
            new_chicken.direction = irandom(360); // Set random direction
            new_chicken.speed = 0; // Start idle
            global.total_chickens++; // Increment the chicken counter
            show_debug_message("Chicken purchased! Total chickens: " + string(global.total_chickens));
        }
    } else {
        show_debug_message("Not enough money!");
    }
};