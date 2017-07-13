/// @description Insert description here
// You can write your code in this editor

///toggle fullscreen
if(keyboard_check_pressed(ord("F")))
window_set_fullscreen(!window_get_fullscreen());


//exit
if(keyboard_check_pressed(vk_escape))
game_end();

