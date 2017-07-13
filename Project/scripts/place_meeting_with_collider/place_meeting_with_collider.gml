/// @description Check collision with collider object
/// @param x
/// @param y
/// @param COLLIDER_TYPE
/// @return bool

var xx = argument0;
var yy = argument1;
var _TYPE = argument2;	

do
{	
	var _other = instance_place(xx, yy, obj_collider);
			
	if(instance_exists(_other))
	{
		if(_other.TYPE == _TYPE)
		{
			return true; //return true if exist n match type
		}
		else return false;
	}
	else return false;
	
}until(instance_place)