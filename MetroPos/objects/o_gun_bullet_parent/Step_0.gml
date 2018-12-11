/// @description 区分普通模式和子弹时间速度
//if live_call()
//	return live_result;
if global.bullet_time_flag {
	speed = scr_common_bullet_time_var(speed_);
} else {
	speed = speed_;
}
if random(10)>4 {
	instance_create_depth(x,y,-20,o_pp_shoot);
}