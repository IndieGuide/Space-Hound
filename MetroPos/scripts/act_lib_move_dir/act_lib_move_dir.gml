///@description 动作库 移动一定距离
///@param dir0为右,1为上,2为左,3为下
///@param dis-1为一直走
///@param spd-1为原始速度
///@param -1为不检测0为主角1为梯子
var dir = argument0;
var dis = argument1;
var spd = argument2;
var obj = argument3;

var hinput;
switch dir{
case 0:
	hinput = 1;
	dis = dis;
	break;
case 1:
	hinput = 0;
	break;
case 2:
	hinput = -1;
	dis = -dis;
	break;
case 3:
	hinput = 0;
	break;

}
	
//第一次执行动作代码
if m_act_first_flag {
	//动作开始代码
	act_start(enum_enemy_normal_state.MOVE, m_sprite_walk);	
	//使用字段记录持久坐标
	//目标位置
	m_act_x[0] = x + dis;
	m_act_y[0] = y;
	m_act_x[1] = 0;
	m_act_y[1] = 0;


}
//帧执行代码
if (dis == -1 || (x <= m_act_x[0] && hinput == 1) || (x >= m_act_x[0] && hinput == -1)) {
	m_hinput = hinput;
	if x == m_act_x[1] {
		//遇到墙了,退出行走动作
		m_hinput = 0;
		//动作退出代码
		act_quit();
		return;
	}
	if obj != -1 {
		var is_player_here = scr_enemy_search_object_by_sight(argument3);
		if  is_player_here {
			scr_enemy_alert_level_change(enum_enemy_normal_alert_level.DANGER);
			m_hinput = 0;
			//记录player位置，传给思考代码使用
			with (o_player) {
				var player_x = x;
				var player_y = y;
			}
			m_act_x[2] = player_x;
			m_act_y[2] = player_y;
			//动作退出代码
			act_quit();
			return;
		}	
	} else {
		if abs(x - o_player.x) < 25 {
			//动作退出代码
			act_quit();
			return;
		}
	}

	//帧位置
	m_act_x[1] = x;
	m_act_y[1] = y;
	
} else {
	m_hinput = 0;
	//动作退出代码
	act_quit();
	return;
}
