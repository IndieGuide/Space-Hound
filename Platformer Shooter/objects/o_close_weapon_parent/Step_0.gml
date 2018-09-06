/// @description Insert description here
// You can write your code in this editor
if player_flag {
	scr_syn_pos_to_player_hand();
	if instance_exists(o_player) 
		flipped = o_player.get_flipped;

	scr_listener_get("flipped");
	scr_listener_get("attack_flag");
	scr_listener_get("twice_attack_flag");
	if (scr_listener_is_var_change("flipped")) {
		attack_flag = false;
		twice_attack_flag = false;
		sprite_index = noone;
		image_index = 0;
		alarm[0] = sword_cooldown/2;
	}
	if(scr_listener_is_var_change("attack_flag")) {
		if instance_exists(o_player)
			o_player.sword_flag = attack_flag;
	}
}


//if(scr_listener_is_var_change("twice_attack_flag")) {
//	sprite_index = spr_attack2;
//	image_index = 0;
//}