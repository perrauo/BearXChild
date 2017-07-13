/// @description step
// You can write your code in this editor



//Toggle debug
if(keyboard_check_pressed(ord("C")))
debug_enabled = !debug_enabled;


if(keyboard_check_pressed(vk_f1))
{
	STATE= "DELAY_TRACKING_2TARGETS";
	state_txt_alpha =1; //reset message alpha
}

if(keyboard_check_pressed(vk_f4))
{
	STATE= "PERFECT_TRACKING_MOUSE";
	state_txt_alpha =1;

}

if(state_txt_alpha > 0) //decrease txt alpha
state_txt_alpha -= .1;




//STATE MACHINE
switch(STATE)
{
case "SMOOTH_TRACKING_2TARGETS":

	var target0 = ds_list_find_value(targets,0); 
	var target1 = ds_list_find_value(targets,1);
	
	//find the midpoint
	var midpoint_x = (target0.x+ target1.x)/2;
	var midpoint_y = (target0.y+ target1.y)/2;

	delta_scale = point_distance(target0.x,target0.y, target1.x, target1.y)/1000;
	
	//deadzone
	
//x1	The x coordinate of the left side of the rectangle to check.
//y1	The y coordinate of the top side of the rectangle to check.
//x2	The x coordinate of the right side of the rectangle to check.
//y2	The y coordinate of the bottom side of the rectangle to check.
	//if !point_in_rectangle(midpoint_x, midpoint_y,x-cam_wbound/2, y-cam_hbound/2, x+cam_wbound/2, y+cam_hbound/2)
	//{
	//	delta_scale = (scale_spd - delta_scale);
	//}
	
	x = lerp(x, midpoint_x, smooth_tracking_spd);
	y = lerp(y, midpoint_y, smooth_tracking_spd);
	
break;


case "PERFECT_TRACKING_MOUSE":
//track player
x = mouse_x
y = mouse_y;

break;


}


//update cam

scale = clamp(lerp(min_scale,max_scale, delta_scale), min_scale, max_scale);

projmat = matrix_build_projection_ortho(proj_w*scale,proj_h*scale,1.0,32000.0);
viewmat = matrix_build_lookat(x,y,depth_cam,x,y,0,0,1,0);

camera_set_view_mat(cam,viewmat);
camera_set_proj_mat(cam, projmat);


