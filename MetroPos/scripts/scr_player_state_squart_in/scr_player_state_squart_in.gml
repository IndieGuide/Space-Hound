
if (key_down){
	
	sprite_index = SPlayerSquart;
	mask_index = SPlayerMaskSquart;
	image_index = 0;
	image_speed = 1.2;
	m_shadow.m_shadow_flag = false;
	state_allow_move(false,true,true);
	return enum_player_state.SQUART;
}
return -1;