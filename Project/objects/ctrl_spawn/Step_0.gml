/// @description Insert description here
// You can write your code in this editor

if(mouse_check_button_pressed(mb_any))
{
	instance_create_depth(mouse_x, mouse_y, depth_foreground, obj_test_projectile);
}
