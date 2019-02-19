///需要优化
//从可穿透平台越下
var platform_ = collision_point(x,y+2,o_solid_platform_halfsolid,0,1);
if platform_ != noone && 
	state_ == enum_player_state.SQUART && 
	key_space_pressed &&  
	point_in_rectangle(bbox_left , y + 2, platform_.bbox_left,platform_.bbox_top,platform_.bbox_right, platform_.bbox_bottom) && 
	point_in_rectangle(bbox_right , y + 2, platform_.bbox_left,platform_.bbox_top,platform_.bbox_right, platform_.bbox_bottom)  {
	state_allow_move(false,false,false);
	state_busy_flag = true;
	x_scale_=image_xscale*.8;
	y_scale_=image_yscale*1.4;
	sprite_index = SPlayerFall;
	mask_index = SPlayerMaskStand;
	m_shadow.m_shadow_flag = true;
	image_index = 0;
	image_speed = 1.2;
	y += 1;
	return enum_player_state.FALL;
} 
if state_cache == enum_player_state.CLIMB {
	return -1;
}
//脚下踩空!place_meeting(x,y+1,o_solid)
if !collision_line(bbox_left, y+1, bbox_right, y+1, o_solid, 0, 1) {
	state_allow_move(true,true,true);
	x_scale_=image_xscale*.8;
	y_scale_=image_yscale*1.4;
	sprite_index = SPlayerFall;
	mask_index = SPlayerMaskStand;
	m_shadow.m_shadow_flag = true;
	image_index = 0;
	image_speed = 1.2;
	return enum_player_state.FALL;
}

return -1;