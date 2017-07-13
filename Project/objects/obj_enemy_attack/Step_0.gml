/// @description Insert description here
// You can write your code in this editor

//inherit FSM and transitions to other states
event_inherited();


direction = point_direction(x,y, curr_target.x, curr_target.y);

//attack if not already done
if(!instance_exists(attack))
{
	attack = instance_create_depth(x+attack_offset_x*xscale,y+attack_offset_y,depth-1, obj_attack_bite);
	attack.xscale = xscale;
	attack.user = WORLD_OBJECTS.ENEMY;
}

//transitions
//TODO height
if(distance_to_object(curr_target) > attack_range_width)
STATE = ENEMY_STATES.CHASE;
