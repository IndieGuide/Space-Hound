
if(state_ == enum_player_state.SQUART && !collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,o_solid_ladder_parent,0,1) && collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom+1,o_solid_ladder_parent,0,1)) {
	//状态基础代码
	//var ladder_ = collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,)
	sprite_index = SPlayerClimb;
	mask_index = SPlayerMaskStand;
	image_index = 0;
	image_speed = 0;
	speed_[h] = 0;
	speed_[v] = 0;
	state_allow_move(false,false);
	stop_by_solid_flag = false;
	ins_bind = noone;
	ins_bind = collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom+1,o_solid_ladder_parent,0,1);
	if ins_bind != noone {
		x = ins_bind.x;
		y = ins_bind.top_y+player_height+1;
	}else {
		ins_bind = noone;
		return -1;
	}
	return enum_player_state.CLIMB;
}

if (place_meeting(x,y,o_solid_ladder_parent) && keyboard_check_pressed(vk_up)){
	//状态基础代码
	//var ladder_ = collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,)
	sprite_index = SPlayerClimb;
	mask_index = SPlayerMaskStand;
	image_index = 0;
	image_speed = 0;
	speed_[h] = 0;
	speed_[v] = 0;
	state_allow_move(false,false);
	stop_by_solid_flag = false;
	ins_bind = noone;
	ins_bind = collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,o_solid_ladder_parent,0,1);
	if ins_bind != noone {
		x = ins_bind.x;
		if y >= ins_bind.bottom_y	
			y = ins_bind.bottom_y - 1;
	}else {
		ins_bind = noone;
		return -1;
	}
	return enum_player_state.CLIMB;
}

return -1;