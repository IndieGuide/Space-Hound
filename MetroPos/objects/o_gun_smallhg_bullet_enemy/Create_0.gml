/// @description 初始化

depth = -1;
speed_ = 8*global.enemy_bullet_speed_scale;
speed = scr_common_bullet_time_var(speed_);
damage = 0.3;
shoot_sound = a_gun_smallhg;
hit_sound = a_hit;
hit = o_gun_smallhg_hit;

alarm[0] = 25;
scr_bullet_change_alarm_to_slow_mode();

audio_play_sound(shoot_sound, 5, false);