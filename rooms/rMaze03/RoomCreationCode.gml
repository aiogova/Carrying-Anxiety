fadein();

if(!instance_exists(oPlayer)) {
	instance_create_layer(1287, 100, "Player", oPlayer);
}

updateCamera();

if(!instance_exists(oCamera)) {
	instance_create_layer(1287, 100, "Player", oCamera);
}


global.wordCount = 0;
global.currently_in_maze = true;

// play music
if (!audio_is_playing(sndMazeMusic)) {
	audio_play_sound(sndMazeMusic,1,true);
}

// stop music
if (audio_is_playing(sndArea3Music)) {
	audio_stop_sound(sndArea3Music);
}