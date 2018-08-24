/// @description 这是狙击枪
/// cooldown是冷却速度，越高越慢，主角默认武器射速10
/// width_是中心到枪口的投影长度
/// height_是中心到枪口水平线的距离
cooldown = 70;
gun_spark = o_gun_rf_spark;
gun_bullet_player = o_gun_rf_bullet;
gun_bullet = o_gun_rf_bullet_enemy;
gun_box = o_gun_rf_box;
width_ = 42;
height_ = 6;
bullet_number = 30;
bullet_add = 15;
bullet_clip = 1;
change_clip_time = 90;

player_flag = false;
player_gun_sprite = s_player_gun4;
event_inherited();