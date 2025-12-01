// change sprite when hovering over object
if (distance_to_point(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0)) <= 0)
{
	sprite_index = sGuardResponse01Selected;
	
	if(mouse_check_button_pressed(mb_left) && global.text_currently_on_screen == false) {
		instance_create_layer(10,10,"Text",oTextCorrectGuard);
		text_already_read = true;
	}
	
} else {
	sprite_index = sGuardResponse01;
}

if(text_already_read == true && !instance_exists(oTextCorrectGuard)) {
	
	saveLocationInfo();
	teleportToMaze(rMaze02);
		
	// play sound
	if (!audio_is_playing(sndTeleport)) {
		audio_play_sound(sndTeleport,1,false); 
	}
	 
	
	instance_destroy(oGuardResponseWrong1);
	instance_destroy(oGuardResponseWrong2);
	instance_destroy();	
}