// change sprite when hovering over object
if (distance_to_point(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0)) <= 0)
{
	sprite_index = sMerchantResponse01Selected;
	
	if(mouse_check_button_pressed(mb_left) && global.text_currently_on_screen == false) {
		instance_create_layer(10,10,"Text",oTextCorrectMerchant);
		text_already_read = true;
	}
	
} else {
	sprite_index = sMerchantResponse01;
}

if(text_already_read == true && !instance_exists(oTextCorrectMerchant)) {
	
	instance_create_layer(10,10,"Text",oText11MerchantResponse);
	instance_create_layer(150,470,"Text",oMerchantNameTag);
	
	instance_destroy(oMerchantResponseWrong1);
	instance_destroy(oMerchantResponseWrong2);
	instance_destroy();	
}