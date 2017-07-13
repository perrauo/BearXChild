/// @description Insert description here
// You can write your code in this editor

//inherit FSM and transitions to other states
event_inherited();

//give you 1 move every 5 seconds
var rand_move = irandom(room_speed/move_freq)

if (rand_move == 0)
{
    dest_x = (x + irandom_range(-wander_dist, wander_dist));
    dest_y = (y + irandom_range(-wander_dist, wander_dist));
}
else
{
    mp_potential_step_object(dest_x, dest_y, move_speed, obj_obstacle);
}