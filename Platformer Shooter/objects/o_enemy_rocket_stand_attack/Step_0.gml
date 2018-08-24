/// @description 状态机及死亡检测
/// 这个敌人站在原地攻击
if !instance_exists(o_player) exit;
if scr_is_player_into_attack_range() {
	state_ = N2_PLACE_ATTACK;
} else {
	state_ = N2_SILENCE;
}
event_user(state_);


scr_enemy_physics();
scr_enemy_death_judge();
