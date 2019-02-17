///@param speed
///@param bounce弹性
var m_speed=argument0;
var bounce_=argument1;

if place_meeting(x+m_speed[h],y,o_solid){
	while !place_meeting(x+sign(m_speed[h]),y,o_solid){
		x+=sign(m_speed[h]);
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

