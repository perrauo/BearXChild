/// @description Insert description here
// You can write your code in this editor

event_inherited()

detection_range = 70;
attack_range_width = 50;
attack_range_height = 20;
detected = false;


enum ENEMY_STATES
{
	IDLE,
	WANDER,
	CHASE,
	ATTACK,
	KNOCKEDDOWN,
	EXHAUSTED,
	FLEE,
	DECAPITATED,
}

STATE = ENEMY_STATES.IDLE;


//refs
//list of targets to track
targets = ds_list_create()
ds_list_add(targets, obj_bear, obj_kid);

curr_target = noone;//curr target


//Create floor collider
bottom_collider = instance_create_depth(x,y, depth-1, obj_collider);
bottom_collider.user = self;
bottom_collider.TYPE = COLLIDER_TYPE.SOLID;
bottom_collider.color = c_blue;

bottom_collider.height = 10; //dims
bottom_collider.offset_x = -25;//offsets
bottom_collider.offset_y = 8;

