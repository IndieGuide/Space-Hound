/// @description 切换玩家手里的枪的通用代码
/// @param gun
var weapon_ = argument0;

var current_weapon_ = player_weapon;
player_weapon = weapon_;
player_weapon_two = current_weapon_;
player_weapon_cooldown = weapon_.m_weapon_cooldown;

change_gun_flag = true;
alarm[4] = 10;


