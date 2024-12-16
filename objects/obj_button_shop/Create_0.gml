// Inherit the parent event
event_inherited();

/// Create Event for obj_button_shop

shop_menu_instance = noone; // Variable to track the shop menu

activate_button = function() {
    // Check if the shop menu is open
    if (instance_exists(shop_menu_instance)) {
        instance_destroy(shop_menu_instance); // Close the shop
        shop_menu_instance = noone; // Reset reference
        show_debug_message("Shop menu closed.");
    } else {
        // Open the shop menu
        shop_menu_instance = instance_create_layer(room_width / 2, room_height / 2, "UI", obj_shop_menu);
        show_debug_message("Shop menu opened.");
    }
};
