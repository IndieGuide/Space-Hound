/// @description 状态机及死亡检测
/// 这个敌人向前冲射击
if !instance_exists(o_player) exit;

state_ = N1_ADVANCE_ATTACK;

event_user(state_);


scr_enemy_physics();
scr_enemy_death_judge();
