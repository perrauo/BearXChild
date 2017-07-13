/// @description Insert description here
// You can write your code in this editor

#macro depth_background 400
#macro depth_middleground 0
#macro depth_foreground -400
#macro depth_UI -500
#macro depth_ctrl -600
#macro depth_cam -1000//depth cannot be lower than cam

#macro vec2 [0,0]
#macro vec2_x 0
#macro vec2_y 1

#macro grid_size 32
#macro offscreen 99999


global.main_cam = instance_create_depth(x,y, depth_ctrl, ctrl_cam);//instance_create_depth(0,0, depth_UI, ctrl_cam);

ds_list_add(global.main_cam.targets, obj_bear, obj_kid);


//get tilemap id
var layer_id = layer_get_id("lay_til_walkable");
global.tilemap_id_walkable = layer_tilemap_get_id(layer_id);

//INIT Enums
enum WORLD_OBJECTS
{
	BEAR,
	KID,
	ENEMY//add diff types
}

