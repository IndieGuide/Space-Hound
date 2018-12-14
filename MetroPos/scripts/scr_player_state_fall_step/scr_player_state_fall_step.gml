if image_index > image_number - 1
	image_index = 0;


if !stop_by_solid_flag && place_meeting(x,y,o_solid_platform_halfsolid){
	speed_[v]+=scr_common_bullet_time_var(gravity_);
	y += scr_common_bullet_time_var(speed_[v]);
	speed_[v]= clamp(speed_[v],jump_height_,-jump_height_);
	return false;
}else {
	state_allow_move(true,true,true);	
	if !place_meeting(x,y,o_solid_platform_halfsolid)
		state_busy_flag = false;	
	if place_meeting(x,y+1,o_solid)
		return true;
}


	
return false;