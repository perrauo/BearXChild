/// @description FSM universal transitions
// You can write your code in this editor

//follow if touched

var incoming_attack = instance_place(x,y,obj_attack);
if(incoming_attack && (incoming_attack.user == WORLD_OBJECTS.BEAR))
{
	STATE = ENEMY_STATES.DECAPITATED;
}



