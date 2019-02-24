/// @description 初始化

depth = -1;
m_speed = 12;
speed = scr_common_bullet_time_var(m_speed);
shoot_sound = a_gun_smallhg;
hit_sound = a_hit;
m_damage = 10;
hit = o_gun_default_hit;

alarm[0] = 45;
scr_bullet_change_alarm_to_slow_mode();

//灯光
var bullet_light = instance_create_layer(x, y,"LightLayer",o_freelight_round_quick);
scr_freelight_setting_strength_instance(bullet_light,c_orange,0.8,1,false);


//这里应该改变敌人灯光，这个还没加入
//with(o_player.player_light) {
//	light_strength = shoot_strength;
//}

//声效
audio_play_sound(shoot_sound, 5, false);