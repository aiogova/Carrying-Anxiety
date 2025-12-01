/// @description	set up camera

cam = view_camera[0];
cam_followspeed = 16; // lower is faster
follow = oPlayer;
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;

xTo = x;
yTo = y;

