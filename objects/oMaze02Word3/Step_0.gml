// if player touches object, it is added to inventory
if (place_meeting(x,y,oPlayer)) {
	global.wordCount++;
	
	// play sound
	if (!audio_is_playing(sndPop)) {
		audio_play_sound(sndPop,1,false); 
	}
	
	instance_destroy();
}

