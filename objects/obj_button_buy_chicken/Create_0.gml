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

        // Generate random position near the center of the room
        var xx = irandom_range(room_width / 2 - 200, room_width / 2 + 200);
        var yy = irandom_range(room_height / 2 - 200, room_height / 2 + 200);
        
        // Create the chicken instance
        var new_chicken = instance_create_layer(xx, yy, "ChickenLayer", obj_kana);

        // Use the Chicken constructor
        if (instance_exists(new_chicken)) {
            new_chicken.chicken = new Chicken();
            global.total_chickens++; // Increment the chicken counter
            show_debug_message("Chicken purchased! Total chickens: " + string(global.total_chickens));
        }
    } else {
        show_debug_message("Not enough money!");
    }
};
