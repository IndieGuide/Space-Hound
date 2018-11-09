/// @description 这是霰弹枪
/// cooldown是冷却速度，越高越慢，主角默认武器射速10
/// width_是中心到枪口的投影长度
/// height_是中心到枪口水平线的距离
cooldown = 50;
gun_spark = o_gun_sg_spark;
gun_bullet_player = o_gun_sg_bullet;
gun_bullet = o_gun_sg_bullet_enemy;
gun_box = o_gun_sg_box;
width_ = 42;
height_ = 6;
bullet_number = 50;
bullet_add = 25;
bullet_clip = 1;
change_clip_time = 120;

player_flag = false;
player_gun_sprite = s_player_gun5;
event_inherited();