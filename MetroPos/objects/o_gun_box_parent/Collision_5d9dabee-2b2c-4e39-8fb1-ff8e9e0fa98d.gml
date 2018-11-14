
#region 弃用
////手上拿的初始枪
//if o_player.player_gun == o_player.default_gun {
//	o_player.player_gun = instance_create_layer(x, y, "Instances", gun);
//	instance_destroy();
//	exit;
//}
//if (o_player.player_gun != o_player.default_gun && o_player.player_gun.id_ != self.id_) {
//	//盒子与枪不同款
//	instance_destroy(o_player.player_gun);
//	o_player.player_gun =  instance_create_layer(x, y, "Instances", gun);
//} else if (o_player.player_gun !=o_player.default_gun && o_player.player_gun.id_ == self.id_) {
//	//如果盒子与枪同款，添加100发子弹
//	o_player.player_gun.bullet_number += 100;
//}

////摧毁箱子
//instance_destroy();
#endregion
///计划换为ds_list
//手上拿的初始枪
var player_gun_obj = o_player.player_gun.object_index;


if (scr_is_exists_in_gunslot(gun)) {	
	var same_gun = scr_is_exists_in_gunslot(gun);
	same_gun.bullet_number += same_gun.bullet_add;
} else if (scr_is_add_gun()) {
	scr_add_gun();
	
} else if(scr_is_replace_last_gun()) {
	ds_list_delete(o_player.gun_slot, ds_list_size(o_player.gun_slot) - 1);
	scr_add_gun();
}

//摧毁箱子
instance_destroy();