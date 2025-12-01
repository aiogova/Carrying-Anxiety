// change sprite when hovering over object
if (distance_to_point(mouse_x,mouse_y) <= 0)
{
	sprite_index = sStartBtnSelected;
	
	// text appears when object is clicked
	if(mouse_check_button_pressed(mb_left)) {
		// play sound
		if (!audio_is_playing(sndPop)) {
			audio_play_sound(sndPop,1,false); 
		}
		
		startGame();
	}
	
} else {
	sprite_index = sStartBtn;
}