/// Create Event for obj_kana

// Randomly assign a chicken type
var chicken_type = choose("standard", "golden", "fast");

switch (chicken_type) {
    case "golden":
        chicken = new golden_chicken();
        break;
    case "fast":
        chicken = new fast_chicken();
        break;
    default:
        chicken = new Chicken();
        break;
}

// Aseta sprite ja ulkoasu
sprite_index = chicken.sprite; 
image_blend = chicken.blend; 

// Alusta liikkuminen
speed = 0; 
direction = chicken.dir;

// Alarms
alarm[0] = room_speed * 10; // First egg in 5 seconds
alarm[1] = room_speed * 1; // Money every second
