/// @description 状态机及死亡检测
/// 主角在索敌范围外，则向前冲，主角进入范围，站定攻击
if !instance_exists(o_player) exit;
if scr_is_player_into_attack_range() {
	state_ = N1_PLACE_ATTACK;
} else {
	state_ = N1_ADVANCE_ATTACK;
}

event_user(state_);


scr_enemy_physics();
scr_enemy_death_judge();
