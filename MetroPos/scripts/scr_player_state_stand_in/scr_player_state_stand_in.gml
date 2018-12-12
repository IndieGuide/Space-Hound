var hinput = keyboard_check(vk_right)-keyboard_check(vk_left);
if hinput == 0 {
	state_allow_move(true,true);
	sprite_index = SPlayerStand;
	mask_index = SPlayerMaskStand;
	image_speed = 3;
	return enum_player_state.STAND;
} else {
	return -1;
}
