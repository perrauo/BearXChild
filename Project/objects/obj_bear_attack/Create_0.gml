/// @description Init Statte
// You can write your code in this editor

attack_offset_x = 30;
attack_offset_y = -30;

//current attack
attack = noone;


attack = instance_create_depth(x+attack_offset_x*xscale,y+attack_offset_y,depth-1, obj_attack_claw);
attack.xscale = xscale;
attack.user = WORLD_OBJECTS.BEAR;
