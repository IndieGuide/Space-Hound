/// @description 初始化

depth = -1;
speed_ = 20;
speed = scr_common_bullet_time_var(speed_);
damage = 5;
shoot_sound = a_gun_rf;
hit_sound = a_hit;
hit = o_gun_rf_hit;

alarm[0] = 70;
scr_bullet_change_alarm_to_slow_mode();

audio_play_sound(shoot_sound, 5, false);