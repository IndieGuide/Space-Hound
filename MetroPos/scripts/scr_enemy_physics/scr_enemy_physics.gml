#region 移动的物理逻辑

//添加重力,以及跳跃事件
if !place_meeting(x,y+1,o_solid){
	m_speed[v] += gravity_;
	image_speed=0;
	image_index=6;
}else{
	if up_flag {
		m_speed[v]=jump_height_;
		x_scale_ = image_xscale*.8;
		y_scale_ = image_yscale*1.4;		
	}
}

//判断撞到墙体速度为零
scr_enemy_move(m_speed,0);

//Check for landing落地判断
if place_meeting(x,y+1,o_solid) && !place_meeting(x,yprevious+1,o_solid){
	x_scale_= image_xscale*1.4;
	y_scale_= image_yscale*.8;
}
#endregion

	
flipped=(o_player.x>x)*2-1;
