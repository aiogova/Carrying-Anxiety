fadein();

if(!instance_exists(oPlayer)) {
	instance_create_layer(225, 2207, "Player", oPlayer);
}

updateCamera();

if(!instance_exists(oCamera)) {
	instance_create_layer(225, 2207, "Player", oCamera);
}

if(global.mazeInstructionsRead == false) { 
	instance_create_layer(10,10,"Text",oTextMazeInstructions);
}

global.wordCount = 0;
global.currently_in_maze = true;

// play music
if (!audio_is_playing(sndMazeMusic)) {
	audio_play_sound(sndMazeMusic,1,true);
}

// stop music
if (audio_is_playing(sndArea1Music)) {
	audio_stop_sound(sndArea1Music);
}