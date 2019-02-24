/// @description act_lib_attack_rush_catch动作库_冲刺的攻击
/// @param dir
/// @param dis

var dir = argument0;
var dis = argument1;
	
//第一次执行动作代码
if m_act_first_flag {
	//动作开始代码
	act_start(enum_enemy_normal_state.ATTACK, m_sprite_attack_dash);	
	m_shadow = instance_create_layer(x,y,"Instances", o_shadow);
	with(m_shadow) {
		m_bind_obj = other.id;
		m_color = c_blue;
		shadow_number = 10;
		for(var i = 0; i < shadow_number+1; i++) {
			x_[i] = noone;
			y_[i] = noone;
		}
		alpha_delta_add = 0.5/shadow_number;
	}
	//使用字段记录持久坐标
	m_act_x[0] = x + dis*dir;
	m_act_y[0] = y;
	m_max_speed = m_max_speed*3;
	m_speed[h] = m_max_speed/3;
	//冲刺动作最长时长
	alarm[ACT_ALARM1] = 220;
}
//帧执行代码
if alarm[ACT_ALARM1] != -1 && ((dir == 1 && x < m_act_x[0] || dir == -1 && x > m_act_x[0]) && !m_attack_succeed_flag) {
	m_hinput = dir;
	//判断墙面
	if place_meeting(x, y, o_solid) {
		//遇到墙了,退出行走动作
		m_hinput = 0;
		//动作退出代码
		m_max_speed = m_max_speed/3;
		m_speed[h] = 0;
		scr_enemy_alert_level_change(enum_enemy_normal_alert_level.SEARCH);
		m_act_attack_succeed_flag = false;
		instance_destroy(m_shadow);
		act_quit();
		return;
	}
	//产生粒子（未完成
	if random(10)>5 {
		var height = sprite_height;
		var i = 0;
		do {
			if random(10)>6 instance_create_depth(x,y-i*5,-20,o_pp_shoot);
			i++;
		} until (i*5>height);
	}
	//伤害判断
	if m_attack_succeed_flag exit;
	if !place_meeting(x, y, o_player) exit;
	var player_state = o_player.state_;

	if player_state != enum_player_state.INJURED {
		player_state = enum_player_state.INJURED;
		//造成伤害
		call(o_player.do_take_physics_x, 30, self);
		call(o_player.do_take_damage, m_normal_damage);

		m_attack_succeed_flag = true;
		alarm[0] = 90;
	} else {
		player_state = enum_player_state.INJURED_TWICE;	
		//造成伤害
		call(o_player.do_take_physics_x, 30, self);	
		call(o_player.do_take_damage, m_normal_damage);
	
		m_attack_succeed_flag = true;
		alarm[0] = 90;
	}
	return;
	
} else {
	//动作退出代码
	m_max_speed = m_max_speed/3;
	m_speed[h] = 0;
	scr_enemy_alert_level_change(enum_enemy_normal_alert_level.SEARCH);
	m_act_attack_succeed_flag = false;
	instance_destroy(m_shadow);
	act_quit();
}
