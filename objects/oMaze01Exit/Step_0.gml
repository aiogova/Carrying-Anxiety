if(place_meeting(x,y,oPlayer) && global.wordCount == 3) {
	fadeout(global.current_room, global.target_x, global.target_y)
	global.maze01Completed = true;
	
	// play sound
	if (!audio_is_playing(sndTeleport)) {
		audio_play_sound(sndTeleport,1,false); 
	}
}


