/// @description 状态机及死亡检测
if scr_is_player_into_attack_range()
	state_ = ATTACK;
else
	state_ = SILENCE;
	
event_user(state_);


//Death  判断敌人死亡
if health_ <= 0
	instance_destroy();
