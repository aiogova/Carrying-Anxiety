// change sprite when hovering over object
if (distance_to_point(mouse_x,mouse_y) <= 0)
{
	sprite_index = sHamsterHoldingStickSelected;
	
	// text appears when object is clicked
	if(mouse_check_button_pressed(mb_left) && global.text_currently_on_screen == false && !instance_exists(oResponse)) {
		instance_create_layer(10,10,"Text",oText06HamsterHoldingStick);
		instance_create_layer(150,470,"Text",oHamsterNameTag);
	}
	
} else {
	sprite_index = sHamsterHoldingStick;
}

if(global.reenteredArea2fromArea3 == true) {
	instance_destroy();
}
