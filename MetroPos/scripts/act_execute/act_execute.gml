//动作的类型：到哪去，做什么动作，交换什么东西，演出

var is_queue_empty = ds_queue_empty(m_act_queue);
act_think();


if m_act_now == noone {
	if !is_queue_empty {
		m_act_now = ds_queue_dequeue(m_act_queue);
		call_ext(m_act_now);
	}
} else{
	call_ext(m_act_now);
}