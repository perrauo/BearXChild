/// @description init cam
// You can write your code in this editor


//Properties
debug_enabled = true;


//STATES
/*
	DELAY_TRACKING_PLAYER, 
	SMOOTH_TRACKING_PLAYER,
	PERFECT_TRACKING_PLAYER,
	PERFECT_TRACKING_MOUSE
	*/
STATE = "SMOOTH_TRACKING_2TARGETS"; 
state_txt_alpha = 1;

//list of targets to track
targets = ds_list_create()

/// @description Init cam
cam = camera_create();

//properties
proj_w = 640;
proj_h = 480;

scale = .5;
min_scale = .5;
max_scale = 2;
delta_scale = .01;
//scale_spd = .005;

zooming_enabled = false;

projmat = matrix_build_projection_ortho(proj_w*scale,proj_h*scale,1.0,32000.0);
viewmat = matrix_build_lookat(x,y,depth_cam,x,y,0,0,1,0);

camera_set_view_mat(cam,viewmat);
camera_set_proj_mat(cam, projmat);

view_camera[0] = cam;



//deadzone boundaries
cam_wbound = 128;
cam_hbound = 96;
in_cam_bound = true;//inside cam boundaries


smooth_tracking_spd = .2; 


//TODO add global access
//put in cam controller (global.cam_width, global_height...id)
//var cam_id = view_get_camera(0); //get default cam_id
//var width = camera_get_view_width(cam_id);
//var height = camera_get_view_height(cam_id);

