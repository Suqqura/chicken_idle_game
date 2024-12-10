// Is cursor hovering
hovering = position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id);

// hovering and left mouse pressed
if (hovering && mouse_check_button_pressed(mb_left)) 
{
	clicked = true;
} 

// left mouse button released
if (mouse_check_button_released(mb_left)) 
{
	clicked = false;

	if (hovering) 
	{
		activate_button(); // Execute the button's action
		// audio_play_sound(snd_button, 1, false);
	}

} 

// Change the color based on state
if (clicked) 
{
    image_blend = clicked_color;
} 
else if (hovering) 
{
    image_blend = hover_color;
} 
else 
{
    image_blend = default_color;
}
