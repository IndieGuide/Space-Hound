/// @description 

//添加重力
if !place_meeting(x,y+1,o_solid){
	m_speed[v] += gravity_;
	image_speed=0;
	image_index=6;
}

//判断撞到墙体速度为零
scr_enemy_move(m_speed,0);
