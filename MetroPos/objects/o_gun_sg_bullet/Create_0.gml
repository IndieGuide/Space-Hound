/// @description 初始化

depth = -1;
m_speed = 0.1;
speed = scr_common_bullet_time_var(m_speed);
damage = 5;
shoot_sound = a_gun_sg;
hit_sound = a_hit;
hit = o_gun_sg_hit;

alarm[0] = 20;
scr_bullet_change_alarm_to_slow_mode();

audio_play_sound(shoot_sound, 5, false);