///@description 动作开始常规执行代码
///@param 状态机切换
///@param 精灵切换
//更改第一次执行flag
m_act_first_flag = false;
m_act_persistent_flag = false;
//更改状态机
m_act_state = argument0;
//更改精灵
sprite_index = argument1;
image_index = 0;
