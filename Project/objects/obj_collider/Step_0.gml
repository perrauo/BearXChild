/// @description Insert description here
// You can write your code in this editor

//START (with new properties)
if(!init)
{	
	//if height and width have not been assign, give default
	if(width == noone)
	width = user.bbox_right-user.bbox_left;

	if(height == noone)
	height = user.bbox_bottom-user.bbox_top;
	
	//game maker api (wrong)
	sprite_collision_mask(_sprite, false, 2, 0, 0, width, height, 1, 0);
							
	
	//Add offset for colliders without users
	x = x + offset_x;
	y = y + offset_y;
	
	//started
	init = true;
}


if(user!= noone)
{
	//follow user
	x = user.x+offset_x;
	y = user.y+offset_y;
}

