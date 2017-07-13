/// @description FSM switch


	//IDLE,
	//WANDER,
	//CHASING,
	//ATTACKING,
	//KNOCKEDDOWN,
	//EXHAUSTED,
	//FLEEING,

switch (STATE)
{
	case BEAR_STATES.CTRL:
	instance_change(obj_bear_ctrl, true);
	break;

	case BEAR_STATES.ATTACK:
	instance_change(obj_bear_attack, true);
	break;
		
}