/// @description 近战武器使用
if (!instance_exists(o_player_sword) && alarm[3] == -1) {
	instance_create_layer(x - 9, y - 40,"Instances", o_player_sword);
	sword_flag = true;
	alarm[3] = sword_cooldown;
}