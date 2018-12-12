//直梯子爬上平台
if state_previous == enum_player_state.CLIMB && y < ins_bind.top_y {
	sprite_index = SPlayerClimbToStand;
	mask_index = SPlayerMaskStand;
	image_index = 0;
	image_speed = 2;
	state_allow_move(false,false);
	speed_[h] = 0;
	speed_[v] = 0;
	return enum_player_state.CLIMBED;
}

var	ins_bind_ = collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,o_solid,0,1);
//跳跃过程中爬上平台
if ins_bind_ != noone && (collision_point(ins_bind_.bbox_top,ins_bind_.bbox_left,self,0,1) || collision_point(ins_bind_.bbox_top,ins_bind_.bbox_right,self,0,1)) {
	sprite_index = SPlayerClimbToStand;
	mask_index = SPlayerMaskStand;
	image_index = 0;
	image_speed = 2;
	state_allow_move(false,false);
	speed_[h] = 0;
	speed_[v] = 0;
	return enum_player_state.CLIMBED;
}


ins_bind_ = noone;
return -1;