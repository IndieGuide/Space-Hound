///@description 动作库 移动一定距离
///@param dir
///@param dis
///@param spd
var dir = argument0;
var dis = argument1;
var spd = argument2;

//第一次执行动作代码
if m_act_first_flag {
	m_act_x = x + dis;
	m_act_y = y;
	m_act_first_flag = false;
}

//帧执行代码
if x <= m_act_x {
	x += spd;
} else {
	//动作退出代码
	m_act_first_flag = true;
	if !ds_queue_empty(m_act_queue)
		m_act_now = ds_queue_dequeue(m_act_queue);
	else 
		m_act_now = noone;
}

