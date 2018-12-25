/// @description 返回下一把枪的instance，如果是最后一把则返回第一把
var next_gun_index; 
for(var i = 0; i < ds_list_size(weapon_slot); i++) {
	if (weapon_slot[| i] == player_weapon) {
		if (i != ds_list_size(weapon_slot) - 1) {
			next_gun_index = i+1;
		} else {
			next_gun_index = 0;
		}
	}
}
return weapon_slot[| next_gun_index];