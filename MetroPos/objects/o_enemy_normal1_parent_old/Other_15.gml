/// @description 较远处检测玩家，接近到离玩家一定范围，就停止

if !instance_exists(o_player) exit;

//左右行走判断，不动的时候速度为零
var hinput = scr_get_enemy_xscale();

if hinput != 0 && scr_is_player_into_attack_range() {
	speed_[h] += hinput * acceleration_;
	speed_[h]= clamp(speed_[h],-max_speed_,max_speed_);
	//var flipped=(mouse_x>x)*2-1;
	image_speed=abs(hinput)*.6;
} else {
	speed_[h]=lerp(speed_[h],0,friction_);
	image_speed=0;
	image_index=0;
}


////射击
//scr_enemy_fire_bullet();
	
