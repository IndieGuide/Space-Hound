
if (keyboard_check(vk_down)){
	sprite_index = SPlayerSquart;
	image_index = 0;
	image_speed = 1.2;
	state_allow_move(false,true);
	return enum_player_state.SQUART;
}
return -1;