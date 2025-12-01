// change sprite when hovering over object
if (distance_to_point(mouse_x,mouse_y) <= 0)
{
	sprite_index = sThiefSelected;
	
	// text appears when object is clicked
	if(mouse_check_button_pressed(mb_left) && global.text_currently_on_screen == false && !instance_exists(oResponse) && global.hasBone == false) {
		instance_create_layer(10,10,"Text",oText17ThiefAgain);
		instance_create_layer(150,470,"Text",oThiefNameTag);
	}
	
} else {
	sprite_index = sThief;
}

