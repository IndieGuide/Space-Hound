var hinput = key_right - key_left;
if hinput != 0 {
	state_allow_move(true,true,true);
	sprite_index = SPlayerWalk;
	mask_index = SPlayerMaskStand;
	m_shadow.m_shadow_flag = false;
	return enum_player_state.MOVE;
} else {
	return -1;
}
