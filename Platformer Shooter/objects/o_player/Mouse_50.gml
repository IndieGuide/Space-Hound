/// @description 根据武器创建子弹
if (!instance_exists(player_gun))
	exit;
if (alarm[0] > 0)
	exit;
	
if player_gun.object_index == o_gun_default {
	scr_player_create_bullet();
}
if player_gun.object_index == o_gun_smg {
	scr_player_create_bullet();
	//子弹减少
	player_gun.bullet_number--;
}

if player_gun.object_index == o_gun_smallhg {
	scr_player_create_bullet();
	//子弹减少
	player_gun.bullet_number--;
}
if player_gun.object_index == o_gun_pistol {
	scr_player_create_bullet();
	//子弹减少
	player_gun.bullet_number--;
}
if player_gun.object_index == o_gun_sg {
	scr_player_create_bullet();
	//子弹减少
	player_gun.bullet_number--;
}
if player_gun.object_index == o_gun_rocket {
	scr_player_create_bullet();
	//子弹减少
	player_gun.bullet_number--;
}
if player_gun.object_index == o_gun_rf {
	scr_player_create_bullet();
	//子弹减少
	player_gun.bullet_number--;
}
if player_gun.object_index == o_gun_lineray {
	scr_player_create_bullet();
	//子弹减少
	player_gun.bullet_number--;
}

  
