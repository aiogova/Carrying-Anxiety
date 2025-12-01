// change sprite when hovering over object
if (distance_to_point(mouse_x,mouse_y) <= 0)
{
	sprite_index = sBeastSelected;
	
	// text appears when object is clicked
	if(mouse_check_button_pressed(mb_left) && global.text_currently_on_screen == false && !instance_exists(oResponse) && (global.talkedToGuard3 == true && global.talkedToHamsterHoldingCagedHamster == true && global.talkedToGuard4 == true && global.talkedToThiefAgain == true)) {
		instance_create_layer(10,10,"Text",oText18Beast);
		instance_create_layer(150,470,"Text",oBeastNameTag);
		
		// play sound
		if (!audio_is_playing(sndGrowl)) {
			audio_play_sound(sndGrowl,1,false); 
		}
	} else if (mouse_check_button_pressed(mb_left) && global.text_currently_on_screen == false && !instance_exists(oResponse)) {
		instance_create_layer(10,10,"Text",oTextCannotPass);
	}
	
} else {
	sprite_index = sBeast;
}

