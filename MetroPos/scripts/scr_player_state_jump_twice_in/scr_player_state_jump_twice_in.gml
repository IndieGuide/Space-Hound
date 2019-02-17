
//在地上,且按了跳跃
if state_ == enum_player_state.JUMP && (key_space_pressed || key_up_pressed){
	state_allow_move(true,true,true);
	m_speed[v]=jump_height_;
	x_scale_=image_xscale*.8;
	y_scale_=image_yscale*1.4;
	sprite_index = SPlayerJump;
	mask_index = SPlayerMaskStand;
	image_index = 0;
	image_speed = 1.2;
	return enum_player_state.JUMP_TWICE;
}

return -1;