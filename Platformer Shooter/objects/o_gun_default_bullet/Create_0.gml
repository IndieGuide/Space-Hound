/// @description 初始化

depth = -1;
speed_ = 5;
speed = scr_common_bullet_time_var(speed_);
shoot_sound = a_gun_default;
hit_sound = a_hit;
damage = 0.5;
hit = o_gun_default_hit;

alarm[0] = 45;
scr_bullet_change_alarm_to_slow_mode();

audio_play_sound(shoot_sound, 5, false);