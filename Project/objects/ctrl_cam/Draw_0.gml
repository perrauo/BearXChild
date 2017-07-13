/// @description Insert description here
// You can write your code in this editor

if(debug_enabled)
{

var c = c_white;

	draw_sprite_ext(sprite_index,0,x,y,1,1,0,c,.5);
	
	draw_rectangle(x-cam_wbound/2, y-cam_hbound/2, x+cam_wbound/2, y+cam_hbound/2, c_white);
	
	var c = c_white;
		draw_text_color(x-100,y-100,STATE,c,c,c,c,state_txt_alpha); //draw state title
	
}