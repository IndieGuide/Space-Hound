/// @description act_lib_attack_rush_catch动作库_扑抓形式的攻击
/// @param pos_fix坐标修正

var pos_fix = argument0;
	
//第一次执行动作代码
if m_act_first_flag {
	//动作开始代码
	act_start(enum_enemy_normal_state.ATTACK, m_sprite_attack);	
	//使用字段记录持久坐标
	m_act_x[0] = x;
	m_act_y[0] = y;
}
//帧执行代码
if (image_index < image_number - 1) {
	x = m_act_x[0];
	y = m_act_y[0];
	//伤害判断
	if image_index < 5 exit;
	if m_attack_succeed_flag exit;
	if !place_meeting(x, y, o_player) exit;
	//改变玩家状态
	with(o_player) {
		var player_state = state_;
		var player_do_take_damage = do_take_damage;
	}
	if player_state != enum_player_state.INJURED {
		player_state = enum_player_state.INJURED;
		//造成伤害
		call(player_do_take_damage, m_normal_damage, 20);
		m_attack_succeed_flag = true;
		alarm[0] = 90;
	} else {
		player_state = enum_player_state.INJURED_TWICE;	
		//造成伤害
		call(player_do_take_damage, m_normal_damage, 20);
		m_attack_succeed_flag = true;
		alarm[0] = 90;
	}
	return;
	
} else {
	x = x + m_face * pos_fix;
	y = m_act_y[0];
	m_act_x[0] = noone;
	m_act_y[0] = noone;
	sprite_index = m_sprite_idol;
	image_index = 0;
	//动作退出代码
	scr_enemy_alert_level_change(enum_enemy_normal_alert_level.SEARCH);
	m_act_attack_succeed_flag = false;
	act_quit();
}
