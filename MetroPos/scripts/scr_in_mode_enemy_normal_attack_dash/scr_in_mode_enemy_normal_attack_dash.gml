var var_do_stand = [self, act_lib_stand_before_attack_time, 1];
var dir = sign(o_player.x - x);
var act_attack = [self, act_lib_attack_dash, dir, 100];
ds_queue_enqueue(m_act_queue,var_do_stand);
ds_queue_enqueue(m_act_queue,act_attack);
ds_queue_enqueue(m_act_queue,var_do_stand);
scr_enemy_alert_level_change(enum_enemy_normal_alert_level.EMPTY);
act_quit();