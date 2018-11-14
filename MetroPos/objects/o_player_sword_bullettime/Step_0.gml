/// @description 
x = o_player.x + 6*o_player.get_flipped;
y = o_player.y - o_player.sprite_height/2-6;

if(!o_player.sword_flag) {
	instance_destroy();
}

if !mouse_check_button(mb_right) {
	instance_destroy();
	o_player.sword_flag = false;
}


