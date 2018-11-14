/// @description 初始化

depth = -1;
speed_ = 20*global.enemy_bullet_speed_scale;
speed = scr_common_bullet_time_var(speed_);
damage = 0.2;
shoot_sound = a_gun_smg;
hit_sound = a_hit;
hit = o_gun_smg_hit;

alarm[0] = 20;
scr_bullet_change_alarm_to_slow_mode();

audio_play_sound(shoot_sound, 5, false);