/// @description Insert description here
// You can write your code in this editor

//inherit FSM and transitions to other states
event_inherited();

//give you 1 move every 5 seconds
var rand_move = irandom(room_speed/move_freq)

if (rand_move == 0)
{
	do
	{
    dest_x = (x + irandom_range(-wander_dist, wander_dist));
    dest_y = (y + irandom_range(-wander_dist, wander_dist));
	} until(tilemap_get_at_pixel(global.tilemap_id_walkable, dest_x, dest_y))
}
else
{
    mp_potential_step_object(dest_x, dest_y, move_spd, obj_obstacle);
}


//px	The x coordinate of the point to check.
//py	The y coordinate of the point to check.
//x1	The x coordinate of the circle centre.
//y1	The y coordinate of the circle centre.
//rad	The radius of the circle.

//detect target
var target_count = ds_list_size(targets)
for(i = 0; i< target_count; i++)
{	
	var target =  ds_list_find_value(targets, i);
	if(point_in_circle(target.x,target.y,x,y,detection_range))
	{	
		detected = true;
		STATE = ENEMY_STATES.CHASE;
		break;
	}
}