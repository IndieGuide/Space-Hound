///@description 动作库 攻击前停顿
///@param time站立秒数(-1为一直站立)
if argument0 != -1 
	var time = argument0*room_speed;
else 
	time = -1;
	
//第一次执行动作代码
if m_act_first_flag {
	//动作开始代码
	act_start(enum_enemy_normal_state.ATTACK, m_sprite_idol);	
	if time != -1 
		alarm[ACT_ALARM1] = time;
	else
		m_act_persistent_flag = true;
}
//帧执行代码
if (alarm[ACT_ALARM1] != -1 || m_act_persistent_flag) {
	
} else {
	//动作退出代码
	act_quit();
}
