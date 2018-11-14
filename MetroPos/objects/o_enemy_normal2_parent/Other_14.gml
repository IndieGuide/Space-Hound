/// @description 前进攻击 N2_ADVANCE_ATTACK
if !instance_exists(o_player) exit;

//左右行走判断，不动的时候速度为零
var hinput = -1;

if hinput != 0 {
	speed_[h] += hinput * acceleration_;
	speed_[h]= clamp(speed_[h],-max_speed_,max_speed_);
	//var flipped=(mouse_x>x)*2-1;
	image_speed=abs(hinput)*.6;
} else {
	speed_[h]=lerp(speed_[h],0,friction_);
	image_speed=0;
	image_index=0;
}


//射击
scr_enemy_fire_bullet_dir(180);
	
