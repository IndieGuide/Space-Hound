/// @description 将盒子里的枪添加到玩家手上，并切换玩家的武器冷却值为该武器的冷却值
var new_gun = instance_create_layer(x, y, "Instances", gun);
ds_list_add(o_player.gun_slot, new_gun);
scr_playergun_change(new_gun);