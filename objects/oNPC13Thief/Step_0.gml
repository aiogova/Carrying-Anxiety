// change sprite when hovering over object
if (distance_to_point(mouse_x,mouse_y) <= 0)
{
	sprite_index = sThiefSelected;
	
	// text appears when object is clicked
	if(mouse_check_button_pressed(mb_left) && global.text_currently_on_screen == false && !instance_exists(oResponse) && global.hasBone == true && (global.talkedToClown == true && global.talkedToHamsterHoldingDagger == true && global.talkedToWitch == true && global.talkedToMagician == true && global.talkedToMerchant == true && global.talkedToBard == true)) {
		instance_create_layer(10,10,"Text",oText13Thief);
		instance_create_layer(150,470,"Text",oThiefNameTag);
	} else if (mouse_check_button_pressed(mb_left) && global.text_currently_on_screen == false && !instance_exists(oResponse)) {
		instance_create_layer(10,10,"Text",oTextCannotPass);
	}
	
} else {
	sprite_index = sThief;
}

if(global.reenteredArea3fromArea4 == true) {
	instance_destroy();
}