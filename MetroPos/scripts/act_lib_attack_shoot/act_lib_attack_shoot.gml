/// @description act_lib_attack_rush_catch动作库_最普通的射击攻击
/// @param gunpoint_x_fix
/// @param gunpoint_y_fix

var gunpoint_fix_x = argument0;
var gunpoint_fix_y = argument1;
	
//第一次执行动作代码
if m_act_first_flag {
	//动作开始代码
	act_start(enum_enemy_normal_state.ATTACK, m_sprite_attack_shoot);	
	//使用字段记录持久坐标
	m_act_x[0] = x;
	m_act_y[0] = y;
}
//帧执行代码
if (image_index < image_number - 1) {
	x = m_act_x[0];
	y = m_act_y[0];
	if image_index >= 2 {
		var bullet = instance_create_layer(x+gunpoint_fix_x*m_face, y+gunpoint_fix_y, "Instances", o_enemy_bullet_kingdom_firegun); 
		bullet.direction = (m_face-1)*(-90);
		bullet.image_angle = (m_face-1)*(-90);

		x = m_act_x[0];
		y = m_act_y[0];
		m_act_x[0] = noone;
		m_act_y[0] = noone;
		sprite_index = m_sprite_idol;
		image_index = 0;
		//动作退出代码
		scr_enemy_alert_level_change(enum_enemy_normal_alert_level.SEARCH);
		act_quit();
	}
	return;
	
} else {
	x = m_act_x[0];
	y = m_act_y[0];
	m_act_x[0] = noone;
	m_act_y[0] = noone;
	sprite_index = m_sprite_idol;
	image_index = 0;
	//动作退出代码
	scr_enemy_alert_level_change(enum_enemy_normal_alert_level.SEARCH);
	act_quit();
}
