/// @description init

//duplicate sprite
_sprite = sprite_duplicate(sprite_index);
sprite_index = _sprite;

user = noone; //user of the floor collsion

init = false;

//Collider type
enum COLLIDER_TYPE
{
	SOLID,
	FX,
	HIT,

}
TYPE = noone;
//

//Dims
height = noone;
width = noone;
//

offset_x = 0;
offset_y = 0;

color = c_red;
alpha = .5;

