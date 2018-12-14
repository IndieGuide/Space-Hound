
if alarm[3] == -1 && key_control_pressed {
	if key_left
		get_face = -1;
	else if key_right
		get_face = +1;
	sprite_index = SPlayerRollNew;
	mask_index = SPlayerMaskSquart;
	image_index = 0;
	image_speed = scr_common_bullet_time_var(2);
	alarm[6] = scr_common_bullet_time_var_division(roll_time);//翻滚计时器
	state_allow_move(false,true,true);
	return enum_player_state.ROLL;
}

return -1;