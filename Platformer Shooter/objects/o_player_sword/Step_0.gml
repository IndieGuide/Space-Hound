///// @description 

scr_syn_pos_to_player_hand();

flipped = o_player.get_flipped;

scr_listener_get("flipped");
scr_listener_get("attack_flag");
scr_listener_get("twice_attack_flag");
if (global.bullet_time_flag && scr_listener_is_var_change("flipped")) {
	attack_flag = false;
}
if(scr_listener_is_var_change("attack_flag")) {
	o_player.sword_flag = attack_flag;
}

//if(scr_listener_is_var_change("twice_attack_flag")) {
//	sprite_index = spr_attack2;
//	image_index = 0;
//}