/// @description Insert description here


event_inherited();

key_right = keyboard_check(vk_right);
key_left = keyboard_check(vk_left);
key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);

key_attack0 = keyboard_check(ord("X")); 


//MOVEMENTS
//////left right
if key_right
{
	xspd = move_spd;
}
else if key_left
{
	xspd = -move_spd;
}
else
xspd = 0;

if key_left && key_right
xspd = 0;


///////up down
if key_up
{
	yspd = -move_spd;
}
else if key_down
{
	yspd = move_spd;
}
else
yspd = 0;

if key_up && key_down
yspd = 0;

//calc directions
var vec_length = point_distance(0,0,xspd,yspd);
if(vec_length > 0)
{
	dir_x = xspd/vec_length;
	dir_y = yspd/vec_length;
}


/// @description Collision with floor colliders
// You can write your code in this editor

with(bottom_collider)
{
	//block movementr if collide with collider whose user is another character
	var _xspd = other.xspd;
	var _yspd = other.yspd;
	
	if(place_meeting_with_collider(x+_xspd,y, COLLIDER_TYPE.SOLID))
	{
	 while(!place_meeting(x+sign(_xspd), y, obj_collider))
	 x+=sign(_xspd);
			
	 other.xspd = 0;		
	}

	
	if(place_meeting_with_collider(x,y+_yspd, COLLIDER_TYPE.SOLID))
	{
		while(!place_meeting(x,y+sign(_yspd), obj_collider))
		y+=sign(_yspd);
			
		other.yspd = 0;				
	}
	

}




//apply movement
x += xspd; 
y += yspd;
//END MOVEMENTS




//TRANSITIONS
if(key_attack0)
STATE = BEAR_STATES.ATTACK;

