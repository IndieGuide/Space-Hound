/// @description 这是主角的初始枪，无弹药限制
//gun_spark = o_gun_default_spark;

//width_ = 38;
//height_ = 7;
event_inherited();
m_id = 50000;
m_weapon_name = "雷明顿左轮";
m_weapon_cooldown = 45;
m_weapon_player_flag = true;
m_weapon_point_x = 37;
m_weapon_point_y = 43;


m_weapon_sprite = SOldPistol;
m_weapon_icon = SOldPistolIcon;
m_weapon_bullet = o_gun_default_bullet;
m_weapon_scan = noone;

m_weapon_anime = SPlayerHgShootNew;
m_weapon_hand_anime = SPlayerHgShootHand;
width_ = 54;
height_ = -6;

do_level_shoot = [self,scr_weapon_shoot_level];
do_shoot = [self,scr_weapon_shoot];

//提示，因为是默认武器，未继承父事件

