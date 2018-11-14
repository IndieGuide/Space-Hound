/// @description 状态机及死亡检测
event_user(SMART);

//Death  判断敌人死亡
if (health_ <= 0)
	instance_destroy();


if (attack_flag == false) {
	destroy_time++;
	if (destroy_time >= 10) {
		instance_destroy();
	}
}