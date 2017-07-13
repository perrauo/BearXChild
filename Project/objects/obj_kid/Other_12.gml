/// @description FSM switch


switch (STATE)
{
	case KID_STATES.IDLE:
	instance_change(obj_kid_idle, true);
	break;
	
	case KID_STATES.WANDER:
	instance_change(obj_kid_wander, true);
	break;
	
	case KID_STATES.CHEER:
	instance_change(obj_kid_cheer, true);
	break;
	
	case KID_STATES.FOLLOW:
	instance_change(obj_kid_follow, true);
	break;
	
	case KID_STATES.HIDE:
	break;
	
	case KID_STATES.MOUNT:
	break;
	
	case KID_STATES.SCARED:
	break;
	
	case KID_STATES.STRUGGLE:
	break;


}