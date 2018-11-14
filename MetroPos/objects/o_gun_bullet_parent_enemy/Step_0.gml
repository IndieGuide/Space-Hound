/// @description 区分普通模式和子弹时间速度
if global.bullet_time_flag {
	speed = scr_common_bullet_time_var(speed_);
} else {
	speed = speed_;
}