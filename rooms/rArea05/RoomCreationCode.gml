fadein();

if(!instance_exists(oPlayer)) {
	instance_create_layer(global.target_x, global.target_y, "Player", oPlayer);
}

updateCamera();

if(!instance_exists(oCamera)) {
	instance_create_layer(global.cam_current_x, global.cam_current_y, "Player", oCamera);
}

if(global.maze05Completed == true && global.backFromMaze5TextRead == false) {
	instance_create_layer(10,10,"Text",oTextHamsterBackFromMaze);
	instance_create_layer(150,470,"Text",oHamsterNameTag);
} else if (global.talkedToHamsterHoldingUltimateSword == true && global.backFromMaze5TextRead == false) {
	instance_create_layer(10,10,"Text",oTextTryAgain);
}

global.currently_in_maze = false;

// stop music
if (audio_is_playing(sndArea4Music)) {
	audio_stop_sound(sndArea4Music);
}

if (audio_is_playing(sndBossFightMusic)) {
	audio_stop_sound(sndBossFightMusic);
}

// play music
if (!audio_is_playing(sndArea5Music)) {
	audio_play_sound(sndArea5Music,1,true);
}