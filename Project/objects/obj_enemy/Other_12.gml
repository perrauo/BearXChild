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
	case ENEMY_STATES.IDLE:
	instance_change(obj_enemy_idle, true);
	break;
	
	case ENEMY_STATES.WANDER:
	instance_change(obj_enemy_wander, true);
	break;
	
	case ENEMY_STATES.CHASE:
	instance_change(obj_enemy_chase, true);
	break;
	
	case ENEMY_STATES.ATTACK:
	instance_change(obj_enemy_attack, true);
	break;
	
	case ENEMY_STATES.KNOCKEDDOWN:
	instance_change(obj_enemy_knockedDown, true);
	break;
	
	case ENEMY_STATES.DECAPITATED:
	instance_change(obj_enemy_decapitated, true);
	break;
	
	case ENEMY_STATES.EXHAUSTED:
	instance_change(obj_enemy_exhausted, true);
	break;
	
	case ENEMY_STATES.FLEE:
	instance_change(obj_enemy_flee, true);
	break;
	
	
}