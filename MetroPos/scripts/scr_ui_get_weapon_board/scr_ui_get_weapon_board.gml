/// @param weapon_ins
switch(argument0.m_weapon_type){
	case GUN:			
	return SUiGunBoard;
	break;
	case CLOSE_WEAPON:
	return SUiCloseWeaponBoard;
	break;
	case MAGIC_WEAPON: 
	case THROW_WEAPON: 
	case MAGIC_CUBE:	
	case PHYSIC_CUBE:	
	case DRUG:	
	break;
	default:
	m_bind_weapon_board = SUiGunBoard;
	m_bind_weapon_line = SUiLineGun;
}