///@description 动作退出代码
m_act_first_flag = true;
if !ds_queue_empty(m_act_queue) {
	m_act_last = m_act_now;
	m_act_now = ds_queue_dequeue(m_act_queue);
}
else {
	m_act_last = m_act_now;
	m_act_now = noone;
}