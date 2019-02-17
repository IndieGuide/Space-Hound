/// @description 前进攻击 N2_ADVANCE_ATTACK
if !instance_exists(o_player) exit;

//左右行走判断，不动的时候速度为零
var hinput = -1;

if hinput != 0 {
	m_speed[h] += hinput * acceleration_;
	m_speed[h]= clamp(m_speed[h],-max_speed_,max_speed_);
	//var flipped=(mouse_x>x)*2-1;
	image_speed=abs(hinput)*.6;
} else {
	m_speed[h]=lerp(m_speed[h],0,friction_);
	image_speed=0;
	image_index=0;
}


//射击
scr_enemy_fire_bullet_dir(180);
	
