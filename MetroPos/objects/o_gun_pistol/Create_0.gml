/// @description 这是左轮手枪，左轮手枪6发子弹一换弹匣，一弹匣内射速取决于扣扳机速度
/// cooldown是冷却速度，越高越慢，主角默认武器射速10
/// width_是中心到枪口的投影长度
/// height_是中心到枪口水平线的距离
cooldown = 90;
gun_spark = o_gun_pistol_spark;
gun_bullet_player = o_gun_pistol_bullet;
gun_bullet = o_gun_pistol_bullet_enemy;
gun_box = o_gun_pistol_box;
width_ = 38;
height_ = 6;
bullet_number = 66;
bullet_add = 33 ;
bullet_clip = 6;
change_clip_time = 150;

player_flag = false;
player_gun_sprite = s_player_gun7;
event_inherited();