// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function startGame(){
	global.target_x = 300;
	global.target_y = 480;

	global.current_room = rControlsRoom;

	global.cam_current_x = global.target_x;
	global.cam_current_y = global.target_y;
	

	global.text_currently_on_screen = false;
	global.currently_in_maze = false;

	global.controlsTextRead = false;
	global.mazeInstructionsRead = false;

	global.wordCount = 0;
	
	global.reenteredArea1fromArea2 = false;
	global.reenteredArea2fromArea3= false;
	global.reenteredArea3fromArea4 = false;
	global.reenteredArea4fromArea5 = false;

	global.maze01Completed = false;
	global.maze02Completed = false;
	global.maze03Completed = false;
	global.maze04Completed = false;
	global.maze05Completed = false;
	
	global.backFromMaze1TextRead = false;
	global.backFromMaze2TextRead = false;
	global.backFromMaze3TextRead = false;
	global.backFromMaze4TextRead = false;
	global.backFromMaze5TextRead = false;
	
	// NPC variables
	global.talkedToHamsterHoldingSeed = false;
	global.talkedToVillager = false;
	
	global.talkedToHamsterHoldingStick = false;
	global.talkedToGoblin = false;
	global.talkedToGuard1 = false;
	global.talkedToGuard2 = false;
	
	global.talkedToClown = false;
	global.talkedToWitch = false;
	global.talkedToMagician = false;
	global.talkedToHamsterHoldingDagger = false;
	global.talkedToMerchant = false;
	global.talkedToBard = false;
	global.talkedToThief = false;
	
	global.talkedToGuard3 = false;
	global.talkedToGuard4 = false;
	global.talkedToHamsterHoldingCagedHamster = false;
	global.talkedToThiefAgain = false;
	global.talkedToBeast = false;
	
	global.talkedToHamsterHoldingUltimateSword = false;
	
	global.hasBone = false;
	
	// play music
	if (!audio_is_playing(sndArea1Music)) {
		audio_play_sound(sndArea1Music,1,true);
	}

	fadeout(rControlsRoom, global.target_x, global.target_y);
}