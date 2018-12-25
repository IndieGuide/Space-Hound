/// @description 初始化

depth = -1;
speed_ = 10;
speed = scr_common_bullet_time_var(speed_);
shoot_sound = a_gun_default;
hit_sound = a_hit;
damage = 0.5;
hit = o_gun_default_hit;

alarm[0] = 45;
scr_bullet_change_alarm_to_slow_mode();

//灯光
var bullet_light = instance_create_layer(x, y,"LightLayer",o_freelight_round_quick);
scr_freelight_setting_strength_instance(bullet_light,c_yellow,0.8,1,false);
//call(obj_light_ctrl_new.do_globalflick,0.4);
with(o_player.player_light) {
	light_strength = shoot_strength;
}

//声效
audio_play_sound(shoot_sound, 5, false);