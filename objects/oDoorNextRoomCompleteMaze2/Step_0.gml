if(place_meeting(x,y,oPlayer) && global.maze02Completed == true &&  global.text_currently_on_screen == false) {
	global.target_x = target_x;
	global.target_y = target_y;
	room_goto(target_room);
}



