fadein();

if(!instance_exists(oPlayer)) {
	instance_create_layer(global.target_x, global.target_y, "Player", oPlayer);
}

updateCamera();

if(!instance_exists(oCamera)) {
	instance_create_layer(global.cam_current_x, global.cam_current_y, "Player", oCamera);
}

if(global.maze04Completed == true && global.backFromMaze4TextRead == false) {
	instance_create_layer(10,10,"Text",oTextBeastBackFromMaze);
	instance_create_layer(150,470,"Text",oBeastNameTag);
	
	// play sound
	if (!audio_is_playing(sndChirp)) {
		audio_play_sound(sndChirp,1,false); 
	}
}

global.currently_in_maze = false;

// stop music
if (audio_is_playing(sndMazeMusic)) {
	audio_stop_sound(sndMazeMusic);
}

if (audio_is_playing(sndArea3Music)) {
	audio_stop_sound(sndArea3Music);
}

if (audio_is_playing(sndArea5Music)) {
	audio_stop_sound(sndArea5Music);
}

// play music
if (!audio_is_playing(sndArea4Music)) {
	audio_play_sound(sndArea4Music,1,true);
}