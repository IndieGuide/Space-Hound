var key_l = keyboard_check_pressed(vk_left);
var key_r = keyboard_check_pressed(vk_right);
if keyboard_check(vk_down) && (key_l || key_r){
	if key_l
		get_face = -1;
	else
		get_face = +1;
	sprite_index = SPlayerRollNew;
	mask_index = SPlayerMaskSquart;
	image_index = 0;
	image_speed = 2;
	alarm[6] = 30;//翻滚计时器
	state_allow_move(false,true);
	return enum_player_state.ROLL;
	
}

return -1;