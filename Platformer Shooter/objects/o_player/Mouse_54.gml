if (!instance_exists(o_player_sword) && alarm[3] == -1) {
	var sword_ = instance_create_layer(x - 9, y - 40,"Instances", o_player_sword);
	sword_flag = true;
	alarm[3] = sword_cooldown;
	if (global.bullet_time_flag) {
		sword_.sprite_index = s_player_sword_bullet;
	}
}

