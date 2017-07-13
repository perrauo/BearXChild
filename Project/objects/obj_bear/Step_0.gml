/// @description Insert description here


event_inherited();


//FSM
event_user(2);

//adjust image xscale based on dir
if(dir_x > 0)
xscale = 1;
else if(dir_x < 0)
xscale = -1;

with(bottom_collider)
{
if(place_meeting_with_collider(x,y,COLLIDER_TYPE.FX))
show_debug_message("fx");
}


	

