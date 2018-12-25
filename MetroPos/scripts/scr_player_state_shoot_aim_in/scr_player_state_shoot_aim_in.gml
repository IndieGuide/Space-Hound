
if object_get_parent(player_weapon.object_index) == o_gun_parent && key_shift {
	//状态基础代码
	sprite_index = SPlayerStandNoHand;
	mask_index = SPlayerMaskStand;
	image_index = 0;
	image_speed = 0;
	state_allow_move(false,true,true);

	//// @description 根据武器创建子弹
	//if (!instance_exists(player_weapon))
	//	return -1;

	//var point_x_ = x + get_face*player_weapon.m_weapon_point_x;
	//var point_y_ = y - player_weapon.m_weapon_point_y;
	//var bullet = instance_create_layer(point_x_, point_y_,"Instances",player_weapon.m_weapon_bullet);
	//bullet.direction = (get_face-1)*(-90);
	//bullet.image_angle = (get_face-1)*(-90);
	//alarm[0] = player_weapon_cooldown;//枪械冷却计时器
	//shooted_flag = true;
	//var bullet_light = instance_create_layer(point_x_, point_y_,"LightLayer",o_freelight_round_quick);
	//scr_freelight_setting_strength_instance(bullet_light,c_yellow,0.8,1,false);
	////call(obj_light_ctrl_new.do_globalflick,0.4);
	//with(player_light) {
	//	light_strength = shoot_strength;
	//}	
	return enum_player_state.SHOOT_AIM;
}

return -1;