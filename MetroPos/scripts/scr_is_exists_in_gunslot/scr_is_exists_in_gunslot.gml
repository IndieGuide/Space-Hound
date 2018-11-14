/// @description 判断盒子里的枪玩家是否拥有，不拥有则返回盒子里枪的instance_id
/// @param object_index

var gun_obj_from_box = argument0;
gun_list = o_player.gun_slot;
for(var i = 0; i < ds_list_size(gun_list); i++) {
	if (gun_list[| i].object_index != gun_obj_from_box) continue;
	return gun_list[| i];
}
return false;
