/// @description 状态机及死亡检测
///这个敌人在接近时接近并攻击，出范围不攻击
if !instance_exists(o_player) exit;
if scr_is_player_into_attack_range() {
	state_ = N1_ADVANCE_PAUSE_ATTACK;
} else {
	state_ = N1_SILENCE;
}



event_user(state_);


scr_enemy_physics();
scr_enemy_death_judge();
