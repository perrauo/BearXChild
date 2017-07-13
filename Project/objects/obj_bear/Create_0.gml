/// @description Insert description here
// You can write your code in this editor
event_inherited()

enum BEAR_STATES
{
	CTRL,
	ATTACK
}
STATE = BEAR_STATES.CTRL;


//Create floor collider
bottom_collider = instance_create_depth(x,y, depth-1, obj_collider);
bottom_collider.user = self;
bottom_collider.TYPE = COLLIDER_TYPE.SOLID;
bottom_collider.color = c_red;

bottom_collider.height = 10; //dims
bottom_collider.offset_x = -25;//offsets
bottom_collider.offset_y = 25;