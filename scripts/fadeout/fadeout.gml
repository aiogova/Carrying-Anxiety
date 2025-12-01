/// @function			fadeout(target room);		
/// @param (index)		_targetroom		the room to transition to		
/// @param (integer)	_target_x		target x location for the player object
/// @paran (integer)	_target_y		target y location for the player object

function fadeout(_targetroom, _target_x, _target_y){
	
	global.target_x = _target_x;
	global.target_y = _target_y;
	global.cam_current_x = global.target_x;
	global.cam_current_y = global.target_y;
	if (!instance_exists(oFade)) {
		var _fade = instance_create_layer(0,0,"Top",oFade);
		with (_fade) {
			a = 0;
			fade_out = true;
			target_room = _targetroom;
		}
	}

}