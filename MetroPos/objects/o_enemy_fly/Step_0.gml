/// @description 状态机及死亡检测
event_user(state_);

//Death  判断敌人死亡
if health_ <= 0 
	instance_destroy();
