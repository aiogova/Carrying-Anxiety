// change sprite when hovering over object
if (distance_to_point(mouse_x,mouse_y) <= 0)
{
	sprite_index = sGuardSelected;
	
	// text appears when object is clicked
	if(mouse_check_button_pressed(mb_left) && global.text_currently_on_screen == false && !instance_exists(oResponse) && (global.talkedToGoblin == true && global.talkedToHamsterHoldingStick == true && global.talkedToGuard1 == true)) {
		instance_create_layer(10,10,"Text",oText04Guard02);
		instance_create_layer(150,470,"Text",oGuard2NameTag);
	} else if (mouse_check_button_pressed(mb_left) && global.text_currently_on_screen == false && !instance_exists(oResponse)) {
		instance_create_layer(10,10,"Text",oTextCannotPass);
	}
	
} else {
	sprite_index = sGuard;
}

