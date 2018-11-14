/// @description 这是冲锋枪
/// cooldown是冷却速度，越高越慢，主角默认武器射速10
/// width_是中心到枪口的投影长度
/// height_是中心到枪口水平线的距离
cooldown = 5;
gun_spark = o_gun_smg_spark;
gun_bullet_player = o_gun_smg_bullet;
gun_bullet = o_gun_smg_bullet_enemy;
gun_box = o_gun_smg_box;
width_ = 38;
height_ = 7;
bullet_number = 199;
bullet_add = 100;
bullet_clip = 10;
change_clip_time = 60;


player_flag = false;
player_gun_sprite = s_player_gun1;
event_inherited();