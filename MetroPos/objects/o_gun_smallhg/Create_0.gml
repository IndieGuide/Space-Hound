/// @description 这是小手枪，低配敌人的武器，应该不用掉落了。。
/// cooldown是冷却速度，越高越慢，主角默认武器射速10
/// width_是中心到枪口的投影长度
/// height_是中心到枪口水平线的距离
cooldown = 50;
gun_spark = o_gun_smallhg_spark;
gun_bullet = o_gun_smallhg_bullet_enemy;
width_ = 28;
height_ = 8;
bullet_number = 300;
bullet_add = 120;
bullet_clip = 5;
change_clip_time = 180;

player_flag = false;
player_gun_sprite = s_player_gun6;
event_inherited();