/// @description 状态机及死亡检测
if scr_is_player_into_attack_range()
	state_ = N1_DIS_ATTACK;
else {
	state_ = N1_PATROL;
}
state_ = N1_PLACE_ATTACK;
event_user(state_);

scr_enemy_physics();
scr_enemy_death_judge();
