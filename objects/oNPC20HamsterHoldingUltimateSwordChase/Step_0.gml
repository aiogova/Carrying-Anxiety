// if player touches object, it is added to inventory
if (place_meeting(x,y,oPlayer) && global.wordCount == 3) {
	
	// play sound
	if (!audio_is_playing(sndCaught)) {
		audio_play_sound(sndCaught,1,false); 
	}
	
	path_end();
	
	fadeout(global.current_room, global.target_x, global.target_y)
	global.maze05Completed = true;
} else if (place_meeting(x,y,oPlayer)) {
	
	// play sound
	if (!audio_is_playing(sndCaught)) {
		audio_play_sound(sndCaught,1,false); 
	}
	
	path_end();
	
	fadeout(global.current_room, 1519, 2125)
}

if (global.wordCount == 3 && text_read == false) {
	instance_create_layer(10,10,"Text",oTextBossFight);
	text_read = true;
}