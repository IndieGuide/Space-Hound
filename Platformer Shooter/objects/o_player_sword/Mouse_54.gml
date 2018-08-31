/// @description 近战武器使用
if (alarm[0] != -1) exit;
if (!attack_flag) {
	attack_flag = true;	
	sprite_index = spr_attack1;
	image_speed = 1.4;
	if global.bullet_time_flag
		image_speed = 0.5;
	image_angle = point_direction(x,y+10,mouse_x,mouse_y);
	image_yscale = o_player.get_flipped;
	
} else if (attack_flag && !twice_attack_flag && !global.bullet_time_flag) {
	twice_attack_flag = true;
}


