/// @description 初始化

depth = -1;
m_speed = 6*global.enemy_bullet_speed_scale;
speed = scr_common_bullet_time_var(m_speed);
damage = 3.5;
shoot_sound = a_gun_rocket;
hit_sound = a_hit;
hit = o_gun_rocket_hit;

alarm[0] = 70;
scr_bullet_change_alarm_to_slow_mode();

audio_play_sound(shoot_sound, 5, false);