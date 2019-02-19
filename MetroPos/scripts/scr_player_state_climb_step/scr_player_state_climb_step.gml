with(state_ins_bind) {
	var plat_bottom_y = bottom_y;
	var plat_top_y = top_y;
}
if (y < plat_bottom_y && y > plat_top_y) {
	x = state_pos_x[0];
	var hinput = key_down - key_up;
	if hinput != 0 {
		m_speed[v] += hinput * acceleration_;
		m_speed[v]= clamp(m_speed[v],-max_speed_*0.5,max_speed_*0.5);
	}else{
		m_speed[v]=lerp(m_speed[v],0,friction_);
	}
	image_speed = .8*hinput;
} else if (y >= plat_bottom_y) {
	x = state_pos_x[0];
	y = plat_bottom_y - 1;
	return true;
}
if (y - player_height + 10 <= plat_top_y) {
	x = state_pos_x[0];
	y = plat_top_y - 1;
	return true;
}
if (key_space_pressed && !place_meeting(x,y,o_solid)) {
	x = state_pos_x[0];
	return true;
}


return false;