// Inherit the parent event
event_inherited();

// Set the button's activation behavior
activate_button = function() {
    if (parent_shop != noone && instance_exists(parent_shop)) {
        instance_destroy(parent_shop); // Destroy the shop menu
    }
};