var hinput = keyboard_check(vk_right)-keyboard_check(vk_left);
if hinput != 0 {
	state_allow_move(true,true);
	sprite_index = SPlayerWalk;
	return enum_player_state.MOVE;
} else {
	return -1;
}
