// change sprite when hovering over object
if (distance_to_point(mouse_x,mouse_y) <= 0)
{
	sprite_index = sMerchantSelected;
	
	// text appears when object is clicked
	if(mouse_check_button_pressed(mb_left) && global.text_currently_on_screen == false && global.talkedToMerchant == false && !instance_exists(oResponse)) {
		instance_create_layer(10,10,"Text",oText11Merchant);
		instance_create_layer(150,470,"Text",oMerchantNameTag);
	}
	
} else {
	sprite_index = sMerchant;
}

