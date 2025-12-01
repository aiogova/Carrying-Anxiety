#region Player Inputs/Movement
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));

// get move direction (-1 is left, 1 is right, 0 is nothing)
horizDir = key_right - key_left;

// get move direction (-1 is up, 1 is down, 0 is nothing)
vertDir = key_down - key_up;

horizMovement = horizDir * movementSpeed;
vertMovement = vertDir * movementSpeed;



#endregion

#region Animations


if(key_up) {
	sprite_index = sPlayerUp;
} else if(key_down) {
	sprite_index = sPlayerDown;	
} else if(key_right) {
	sprite_index = sPlayerRight;	
} else if(key_left) {
	sprite_index = sPlayerLeft;
} else {
	sprite_index = sPlayer;	
}




#endregion


#region Wall Collisions

// horizontal collision
if (place_meeting(x+horizMovement, y, oBlock)) {
	var onepixel = sign(horizMovement);
	while (!place_meeting(x+onepixel,y,oBlock)) {
		x += onepixel;
	}
	horizMovement = 0;
} 

// commit horizontal movement
x += horizMovement;

// vertical collision
if (place_meeting(x, y+vertMovement, oBlock)) {
	var onepixel = sign(vertMovement);
	while (!place_meeting(x,y+onepixel,oBlock)) {
		y += onepixel;
	}
	vertMovement = 0;
}

// commit vertical movement
y += vertMovement;

#endregion


