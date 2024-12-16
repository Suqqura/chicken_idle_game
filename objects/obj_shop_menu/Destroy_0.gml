/// Destroy Event for obj_shop_menu

// Destroy child instances if they exist
if (instance_exists(shop_window)) instance_destroy(shop_window);
if (instance_exists(btn_buy)) instance_destroy(btn_buy);
if (instance_exists(btn_close)) instance_destroy(btn_close);
