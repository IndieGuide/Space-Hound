///@param speed
///@param bounce弹性
var m_speed=argument0;
var bounce_x=argument1;
var bounce_y=argument2;
var stop_by_solid_flag_ = argument3;


if place_meeting(x+m_speed[h],y,o_solid) && stop_by_solid_flag_ {
	while !place_meeting(x+sign(m_speed[h]),y,o_solid){
		x+=sign(m_speed[h]);
	}
	
	if bounce_x>0{
		m_speed[@ h]=-m_speed[@ h]*bounce_x;
	}else{
		m_speed[@ h]=0;
	}
}

x += scr_common_bullet_time_var(m_speed[h]);

if place_meeting(x,y+m_speed[v],o_solid) && stop_by_solid_flag_ {
	while !place_meeting(x,y+sign(m_speed[v]),o_solid){
		y+=sign(m_speed[v]);
	}
	
	if bounce_y>0{
		m_speed[@ v]=-m_speed[@ v]*bounce_y;
	}else{
		m_speed[@ v]=0;
	}
}


y += scr_common_bullet_time_var(m_speed[v]);