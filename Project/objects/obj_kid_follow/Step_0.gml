/// @description Insert description here
// You can write your code in this editor

//inherit FSM and transitions to other states
event_inherited();

dest_x = protector.x - protector.dir_x*follow_dist;
dest_y = protector.y - protector.dir_y*follow_dist;

mp_potential_step_object(dest_x, dest_y, move_spd, obj_obstacle);

if(distance_to_object(protector) > dist_lost)
STATE = KID_STATES.IDLE;