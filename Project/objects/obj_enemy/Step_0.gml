/// @description Insert description here
// You can write your code in this editor

event_inherited();

//FSM
//transitions
event_user(1);

//states
event_user(2);


dir_x = lengthdir_x(1,direction);
dir_y = lengthdir_y(1,direction);


//adjust xscale to direction
if!(direction== 90)||(direction ==270)
{
	
if(is_between(direction, 270, 360) ||  is_between(direction, 0, 90))
image_xscale = 1;
else
image_xscale = -1;

}
