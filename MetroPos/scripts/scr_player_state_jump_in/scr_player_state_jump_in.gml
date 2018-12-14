
//在地上,且按了跳跃
if (key_space_pressed || key_up_pressed) && place_meeting(x,y+1,o_solid) || (key_space_pressed && state_previous == enum_player_state.CLIMB && !place_meeting(x,y,o_solid)){
	state_allow_move(true,true,true);
	speed_[v]=jump_height_;
	x_scale_=image_xscale*.8;
	y_scale_=image_yscale*1.4;
	sprite_index = SPlayerJump;
	mask_index = SPlayerMaskStand;
	image_speed = 1.2;
	return enum_player_state.JUMP;
}

return -1;