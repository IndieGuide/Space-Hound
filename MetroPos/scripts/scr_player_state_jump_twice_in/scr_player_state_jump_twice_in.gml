
//在地上,且按了跳跃
if state_ == enum_player_state.JUMP && keyboard_check_pressed(vk_up){
	state_allow_move(true,true);
	speed_[v]=jump_height_;
	x_scale_=image_xscale*.8;
	y_scale_=image_yscale*1.4;
	alarm[5] = -1;
	jump_twice_flag = true;
	sprite_index = SPlayerJump;
	image_index = 0;
	image_speed = 1.2;
	return enum_player_state.JUMP_TWICE;
}

return -1;