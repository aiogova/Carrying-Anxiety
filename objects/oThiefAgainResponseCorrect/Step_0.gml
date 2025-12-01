// change sprite when hovering over object
if (distance_to_point(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0)) <= 0)
{
	sprite_index = sThiefAgainResponse01Selected;
	
	if(mouse_check_button_pressed(mb_left) && global.text_currently_on_screen == false) {
		instance_create_layer(10,10,"Text",oTextCorrectThiefAgain);
		text_already_read = true;
	}
	
} else {
	sprite_index = sThiefAgainResponse01;
}

if(text_already_read == true && !instance_exists(oTextCorrectThiefAgain)) {
	
	instance_create_layer(10,10,"Text",oText17ThiefAgainResponse);
	instance_create_layer(150,470,"Text",oThiefNameTag);
	 
	instance_destroy(oThiefAgainResponseWrong1);
	instance_destroy(oThiefAgainResponseWrong2);
	instance_destroy();	
}