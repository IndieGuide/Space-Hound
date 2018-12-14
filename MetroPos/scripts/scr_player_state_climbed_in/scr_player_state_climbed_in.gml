//直梯子爬上平台(ins_bind在climb结束时不清空，使climbed事件能根据top_y判断是爬上去还是下梯子)
if state_previous == enum_player_state.CLIMB && state_ins_bind == 2{
	state_ins_bind = -1;
	return enum_player_state.STAND;
}
if state_previous == enum_player_state.CLIMB && state_ins_bind == 1 {
	state_ins_bind = -1;
	sprite_index = SPlayerClimbToStand;
	mask_index = SPlayerMaskStand;
	image_index = 0;
	image_speed = 2;
	state_allow_move(false,false,true);
	speed_[h] = 0;
	speed_[v] = 0;
	anime_x = x;
	anime_y = y;
	return enum_player_state.CLIMBED;
}
if (state_previous == enum_player_state.JUMP || state_previous == enum_player_state.JUMP_TWICE) && state_ins_bind == 3 {
	state_ins_bind = -1;
	var ins_bind_ = collision_rectangle(bbox_left,bbox_top-1,bbox_right,bbox_bottom,o_solid_platform_halfsolid,0,1);
	if ins_bind_ == noone return -1;
	sprite_index = SPlayerClimbToPlatform;
	mask_index = SPlayerMaskStand;
	image_index = 0;
	image_speed = 2;
	state_allow_move(false,false,true);
	speed_[h] = 0;
	speed_[v] = 0;
	y = ins_bind_.bbox_top - 1;
	anime_x = x;
	anime_y = y+2;
	return enum_player_state.CLIMBED;
}

var	ins_bind_ = collision_rectangle(bbox_left-1,bbox_top,bbox_right+1,bbox_bottom,o_solid,0,1);

//跳跃过程中爬上平台
if (state_ == enum_player_state.JUMP || state_ == enum_player_state.JUMP_TWICE) && ins_bind_ != noone {
	var ins_left_ = ins_bind_.bbox_left;
	var ins_right_ = ins_bind_.bbox_right;
	var ins_top_ = ins_bind_.bbox_top;
	var x_ = ins_bind_.x;
	var y_ = ins_bind_.y;

	
	if point_in_rectangle(ins_right_ + 1,ins_top_,bbox_left,bbox_top,bbox_right,bbox_bottom) || point_in_rectangle(ins_left_ - 1,ins_top_,bbox_left,bbox_top,bbox_right,bbox_bottom) {
		if point_in_rectangle(ins_right_ + 1,ins_top_,bbox_left,bbox_top,bbox_right,bbox_bottom) {
			//检测攀爬点上方有没有遮挡solid，有则不爬
			if collision_point(ins_right_,ins_top_ - 1,o_solid,0,1)
				return -1;
			x -= 5;
		} else if (point_in_rectangle(ins_left_ - 1,ins_top_,bbox_left,bbox_top,bbox_right,bbox_bottom)) {
			if collision_point(ins_left_,ins_top_ - 1,o_solid,0,1)
				return -1;
			x += 5;
		}
		y = ins_bind_.bbox_top-1;
		sprite_index = SPlayerClimbToStand;
		mask_index = SPlayerMaskStand;
		image_index = 0;
		image_speed = 2;
		state_allow_move(false,false,true);
		speed_[h] = 0;
		speed_[v] = 0;
		anime_x = x;
		anime_y = y + 10;
		return enum_player_state.CLIMBED;
	}
}


ins_bind_ = noone;
return -1;