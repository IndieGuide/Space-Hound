if !attack_flag exit;
ds_list_clear(attacked_list);
if attack_flag && twice_attack_flag && sprite_index != spr_attack2{
	sprite_index = spr_attack2;
	image_index = 0;
	exit;	
}
if attack_flag && !twice_attack_flag {
	attack_flag = false;

	sprite_index = noone;
	image_index = 0;
	exit;
}
sprite_index = noone;
image_index = 0;
alarm[0] = sword_cooldown;
attack_flag = false;
twice_attack_flag = false;

