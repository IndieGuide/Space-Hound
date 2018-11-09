gun_list = o_player.gun_slot;
for(var i = 0; i < ds_list_size(gun_list); i++) {
	if (gun_list[| i] == self) return true;	
}
return false;