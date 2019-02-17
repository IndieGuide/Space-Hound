
if alarm[0] == -1 && mouse_check_button_pressed(mb_left){
	if(object_get_parent(player_weapon.object_index) == o_gun_parent) { 
		//状态基础代码
		sprite_index = player_weapon.m_weapon_anime;
		mask_index = SPlayerMaskStand;
		image_index = 0;
		image_speed = .8;
		state_allow_move(false,true,true);
		if place_meeting(x,y+1,o_solid)
			m_speed[h] += -get_face * acceleration_*3;
		else
			m_speed[h] += -get_face * acceleration_*20;
		// @description 根据武器创建子弹
		if (!instance_exists(player_weapon))
			return -1;

		call(player_weapon.do_level_shoot);
	}
	if alarm[0] == -1 && (object_get_parent(player_weapon.object_index) == o_close_weapon_parent) { 
		sprite_index = player_weapon.m_weapon_anime;
		mask_index = SPlayerMaskStand;
		image_index = 0;
		image_speed = .8;
		state_allow_move(false,true,true);
		m_speed[h] += get_face * acceleration_*6;
		alarm[0] = player_weapon_cooldown;//枪械冷却计时器
	}

	
	return enum_player_state.SHOOT;
}

return -1;