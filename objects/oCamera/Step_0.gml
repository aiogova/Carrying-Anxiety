// Update destination
if (instance_exists(follow)) { // if there is an object to follow
	xTo = follow.x; // set xTo to be that object's x position
	yTo = follow.y; // set yTo to be that object's y position
}

// Update object position

x += (xTo - x) / cam_followspeed; // moves slower the closer it gets to the follow object
y += (yTo - y) / cam_followspeed; // moves slower the closer it gets to the follow object

// Keeps the camera from leaving the room boundaries
x = clamp(x, view_w_half, room_width-view_w_half);
y = clamp(y, view_h_half, room_height-view_h_half);


// Update camera view
camera_set_view_pos(cam, x-view_w_half, y-view_h_half);