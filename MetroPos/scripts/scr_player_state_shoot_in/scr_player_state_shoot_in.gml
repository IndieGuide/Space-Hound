
if alarm[0] == -1 && mouse_check_button_pressed(mb_left){
	//状态基础代码
	sprite_index = SPlayerHgShoot;
	mask_index = SPlayerMaskStand;
	image_index = 0;
	image_speed = .8;
	state_allow_move(false,true,true);
	if place_meeting(x,y+1,o_solid)
		speed_[h] += -get_face * acceleration_*3;
	else
		speed_[h] += -get_face * acceleration_*20;
	// @description 根据武器创建子弹
	if (!instance_exists(player_gun))
		return -1;

	var bullet = instance_create_layer(x + get_face*player_gun.gun_point_x, y - player_gun.gun_point_y,"Instances",player_gun.gun_bullet);

	bullet.direction = (get_face-1)*(-90);
	bullet.image_angle = (get_face-1)*(-90);
	alarm[0] = bullet_cooldown_;//枪械冷却计时器
	shooted_flag = true;
	
	
	return enum_player_state.SHOOT;
}

return -1;