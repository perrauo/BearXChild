/// @description Insert description here
// You can write your code in this editor

//inherit FSM and transitions to other states
event_inherited();


//det closest target
var closest_target = ds_list_find_value(targets, 0);
var s_dist = 100;//smallest dist
var dist;
var target_count = ds_list_size(targets)
for(i = 0; i< target_count; i++)
{	
	var tg =  ds_list_find_value(targets, i);
	
	dist = distance_to_object(tg);
	if(dist < s_dist)
	{
		closest_target = tg;
		s_dist = dist;
	}
	
}

curr_target = closest_target;



dest_x = curr_target.x+irandom(attack_range_width);
dest_y = curr_target.y;

//until dest is on walkable tile
if(tilemap_get_at_pixel(global.tilemap_id_walkable, dest_x, dest_y))
mp_potential_step_object(dest_x, dest_y, move_spd, obj_obstacle);


//Argument	Description
//px	The x coordinate of the point to check.
//py	The y coordinate of the point to check.
//x1	The x coordinate of the left side of the rectangle to check.
//y1	The y coordinate of the top side of the rectangle to check.
//x2	The x coordinate of the right side of the rectangle to check.
//y2	The y coordinate of the bottom side of the rectangle to check.
if(point_in_rectangle(x,y,
closest_target.x-attack_range_width,closest_target.y-attack_range_height,
closest_target.x+attack_range_width, closest_target.y+attack_range_height))
STATE = ENEMY_STATES.ATTACK;


if(distance_to_object(closest_target) > dist_lost)
STATE = ENEMY_STATES.IDLE;