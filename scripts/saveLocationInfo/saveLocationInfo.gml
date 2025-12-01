// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function saveLocationInfo(){
		global.current_room = room;
		global.target_x = oPlayer.x;
		global.target_y = oPlayer.y;
		global.cam_current_x = global.target_x;
		global.cam_current_y = global.target_y;
}