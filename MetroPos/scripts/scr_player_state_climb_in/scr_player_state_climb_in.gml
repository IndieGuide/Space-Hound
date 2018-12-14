
if(state_ == enum_player_state.SQUART && !collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,o_solid_ladder_parent,0,1) && collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom+1,o_solid_ladder_parent,0,1)) {
	//判断是否是从梯子上方进入此状态（下梯子）
	state_ins_bind = noone;
	state_ins_bind = collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom+1,o_solid_ladder_parent,0,1);
	if state_ins_bind != noone {
		x = state_ins_bind.x;
		y = state_ins_bind.top_y+player_height+1;
	}else {
		state_ins_bind = noone;
		return -1;
	}
	//状态基础代码
	if state_ins_bind.object_index == o_solid_ladder_front {
		sprite_index = SPlayerClimb;
		get_face = 1;
	} else if (state_ins_bind.object_index == o_solid_ladder_right) {
		sprite_index = SPlayerClimbRight;
		get_face = 1;
	} else if (state_ins_bind.object_index == o_solid_ladder_left) {
		sprite_index = SPlayerClimbRight;
		get_face = -1;
	}
	mask_index = SPlayerMaskStand;
	image_index = 0;
	image_speed = 0;
	speed_[h] = 0;
	speed_[v] = 0;
	state_allow_move(false,false,false);
	
	return enum_player_state.CLIMB;
}
//正常上梯子和从空中进入梯子
if (key_space_pressed || key_up_pressed) && (place_meeting(x,y,o_solid_ladder_parent)){
	//状态基础代码
	//sprite_index = SPlayerClimb;
	mask_index = SPlayerMaskStand;
	image_index = 0;
	image_speed = 0;
	speed_[h] = 0;
	speed_[v] = 0;
	state_allow_move(false,false,false);
	state_ins_bind = noone;
	state_ins_bind = collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,o_solid_ladder_parent,0,1);
	if state_ins_bind != noone {
		x = state_ins_bind.x;
		if y >= state_ins_bind.bottom_y	
			y = state_ins_bind.bottom_y - 1;
	}else {
		state_ins_bind = noone;
		return -1;
	}
	//根据梯子类型确认人物精灵
	if state_ins_bind.object_index == o_solid_ladder_front {
		sprite_index = SPlayerClimb;
		get_face = 1;
	} else if (state_ins_bind.object_index == o_solid_ladder_right) {
		sprite_index = SPlayerClimbRight;
		get_face = 1;
	} else if (state_ins_bind.object_index == o_solid_ladder_left) {
		sprite_index = SPlayerClimbRight;
		get_face = -1;
	}
	return enum_player_state.CLIMB;
}

return -1;