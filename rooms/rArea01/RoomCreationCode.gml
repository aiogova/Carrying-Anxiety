fadein();

if(!instance_exists(oPlayer)) {
	instance_create_layer(global.target_x, global.target_y, "Player", oPlayer);
}

updateCamera();

if(!instance_exists(oCamera)) {
	instance_create_layer(global.cam_current_x, global.cam_current_y, "Player", oCamera);
}


if(global.controlsTextRead == false) { 
	instance_create_layer(10,10,"Text",oTextControls);
}

if(global.maze01Completed == true && global.backFromMaze1TextRead == false) {
	instance_create_layer(10,10,"Text",oTextVillagerBackFromMaze);
	instance_create_layer(150,470,"Text",oVillagerNameTag);
}

global.currently_in_maze = false;

// stop music
if (audio_is_playing(sndMazeMusic)) {
	audio_stop_sound(sndMazeMusic);
}

if (audio_is_playing(sndArea2Music)) {
	audio_stop_sound(sndArea2Music);
}

// play music
if (!audio_is_playing(sndArea1Music)) {
	audio_play_sound(sndArea1Music,1,true);
}