///@param speed
///@param bounce弹性
var m_speed=argument0;
var bounce_=argument1;

if place_meeting(x+m_speed[h],y,o_solid){
	while !place_meeting(x+sign(m_speed[h]),y,o_solid){
		x+=sign(m_speed[h]);
		if state_ == enum_player_state.ROLL && x == xprevious show_message(1);
	}
	
	if bounce_>0{
		m_speed[@ h]=-m_speed[@ h]*bounce_;
	}else{
		m_speed[@ h]=0;
	}
}

x += scr_common_bullet_time_var(m_speed[h]);

if place_meeting(x,y+m_speed[v],o_solid){
	while !place_meeting(x,y+sign(m_speed[v]),o_solid){
		y+=sign(m_speed[v]);
	}
	
	if bounce_>0{
		m_speed[@ v]=-m_speed[@ v]*bounce_;
	}else{
		m_speed[@ v]=0;
	}
}


y += scr_common_bullet_time_var(m_speed[v]);

//var bbox_side;
//if (m_speed[h] >0) bbox_side = bbox_right;
//else bbox_side = bbox_left;
//if(tilemap_get_at_pixel(collision_tilemap,bbox_side+m_speed[h],bbox_top) != 0) || (tilemap_get_at_pixel(collision_tilemap,bbox_side+m_speed[h],bbox_bottom) != 0)
//{
//	if (m_speed[h] > 0) x = x - (x mod 16) + 15 - (bbox_right - x);
//	else x = x - (x mod 16) - (bbox_left - x);
//	m_speed[h] = 0;
//}

//if (m_speed[v] >0) bbox_side = bbox_bottom;
//else bbox_side = bbox_top;
//if(tilemap_get_at_pixel(collision_tilemap,bbox_left,bbox_side+m_speed[v]) != 0) || (tilemap_get_at_pixel(collision_tilemap,bbox_right,bbox_side+m_speed[v]) != 0)
//{
//	if (m_speed[v] > 0) y = y - (y mod 16) + 15 - (bbox_bottom - y);
//	else y = y - (y mod 16) - (bbox_top - y);
//	m_speed[v] = 0;
//}
