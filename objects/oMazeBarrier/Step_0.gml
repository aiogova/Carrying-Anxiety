if(global.wordCount == 3) {
	
	// play sound
	if (!audio_is_playing(sndMazeUnlocked)) {
		audio_play_sound(sndMazeUnlocked,1,false); 
	}
	
	instance_destroy();
}


