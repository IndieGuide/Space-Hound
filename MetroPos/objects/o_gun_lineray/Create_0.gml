/// @description 这是线段镭射枪
/// cooldown是冷却速度，越高越慢，主角默认武器射速10
/// width_是中心到枪口的投影长度
/// height_是中心到枪口水平线的距离
cooldown = 40;
gun_spark = o_gun_lineray_spark;
gun_bullet_player = o_gun_lineray_bullet;
gun_bullet = o_gun_lineray_bullet_enemy;
gun_box = o_gun_lineray_box;
width_ = 38;
height_ = 3;
bullet_number = 80;
bullet_add = 40;
bullet_clip = 1;
change_clip_time = 80;

player_flag = false;
player_gun_sprite = s_player_gun3;
event_inherited();