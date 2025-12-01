fadein();

if(!instance_exists(oPlayer)) {
	instance_create_layer(global.target_x, global.target_y, "Player", oPlayer);
}

global.currently_in_maze = false;

// play music
if (!audio_is_playing(sndArea1Music)) {
	audio_play_sound(sndArea1Music,1,true);
}