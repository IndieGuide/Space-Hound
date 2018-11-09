/// @description 切换玩家手里的枪的通用代码
/// @param gun
var gun_ = argument0;

o_player.player_gun = gun_;
o_player.bullet_cooldown_ = gun_.cooldown;

o_player.change_gun_flag = true;
o_player.alarm[4] = 5;


