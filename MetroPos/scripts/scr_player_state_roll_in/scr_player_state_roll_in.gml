
if keyboard_check(vk_down) && (keyboard_check_pressed(vk_left) || keyboard_check_pressed(vk_right)){
	sprite_index = SPlayerRoll;
	image_index = 0;
	image_speed = 5;
	alarm[6] = 30;//翻滚计时器
	state_allow_move(false,true);
	return enum_player_state.ROLL;
}

return -1;