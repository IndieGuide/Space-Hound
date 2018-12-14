//var hinput = key_right - key_left;
//if hinput == 0 || state_previous == enum_player_state.FALL{
	state_allow_move(true,true,true);
	sprite_index = SPlayerStand;
	mask_index = SPlayerMaskStand;
	image_speed = 3;
	return enum_player_state.STAND;
//} else {
//	return -1;
//}
