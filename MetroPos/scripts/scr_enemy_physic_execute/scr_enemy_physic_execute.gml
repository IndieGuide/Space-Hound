var hinput = m_hinput;
if m_x_move_flag && hinput != 0 {
	m_speed[h] += hinput * m_acceleration;
	m_speed[h]= clamp(m_speed[h],-m_max_speed,m_max_speed);
	m_face = hinput;
}else{
	m_speed[h]=lerp(m_speed[h],0,m_friction);
}
//重力代码 && !place_meeting(x,y+1,o_solid)
if m_y_move_flag && !collision_line(bbox_left, y+1, bbox_right, y+1, o_solid, 0, 1){
	m_speed[v]+=scr_common_bullet_time_var(m_gravity);
	m_speed[v]= clamp(m_speed[v],m_jump_height,-m_jump_height);
}
scr_enemy_move_ext(m_speed, 0, 0, m_stop_by_solid_flag);