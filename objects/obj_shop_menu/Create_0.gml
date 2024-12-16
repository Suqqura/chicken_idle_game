/// Create Event for obj_shop_menu

// Center the shop menu
x = room_width / 2;
y = room_height / 2;

// Create the shop window (child)
shop_window = instance_create_depth(x, y, 0, obj_window);
shop_window.window_width = 500;
shop_window.window_height = 300;
shop_window.title = "Shop";

// Create "Buy Chicken" button (child)
btn_buy = instance_create_depth(x, y - 40, -100, obj_button_buy_chicken);

// Create "Close" button (child)
btn_close = instance_create_depth(x, y + 50, -100, obj_button_close);

// Pass reference to the parent shop menu
btn_close.parent_shop = id;
