// Left Pressed Event (Buying Chicken)
if global.money >= chicken_cost {
    global.money -= chicken_cost;
    instance_create_layer(irandom(room_width), irandom(room_height), "ChickenLayer", obj_chicken);
}