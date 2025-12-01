fadein();

if(!instance_exists(oPlayer)) {
	instance_create_layer(global.target_x, global.target_y, "Player", oPlayer);
}

updateCamera();

if(!instance_exists(oCamera)) {
	instance_create_layer(global.cam_current_x, global.cam_current_y, "Player", oCamera);
}

if(global.maze02Completed == true && global.backFromMaze2TextRead == false) {
	instance_create_layer(10,10,"Text",oTextGuardBackFromMaze);
	instance_create_layer(150,470,"Text",oGuard2NameTag);
}

global.currently_in_maze = false;

// stop music
if (audio_is_playing(sndMazeMusic)) {
	audio_stop_sound(sndMazeMusic);
}

if (audio_is_playing(sndArea1Music)) {
	audio_stop_sound(sndArea1Music);
}

if (audio_is_playing(sndArea3Music)) {
	audio_stop_sound(sndArea3Music);
}

// play music
if (!audio_is_playing(sndArea2Music)) {
	audio_play_sound(sndArea2Music,1,true);
}