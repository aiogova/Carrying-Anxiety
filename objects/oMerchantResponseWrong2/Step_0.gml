// change sprite when hovering over object
if (distance_to_point(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0)) <= 0)
{
	sprite_index = sMerchantResponse03Selected;
	
	if(mouse_check_button_pressed(mb_left) && global.text_currently_on_screen == false) {
		instance_create_layer(10,10,"Text",oTextWrongMerchant);
	}
	
} else {
	sprite_index = sMerchantResponse03;
}

