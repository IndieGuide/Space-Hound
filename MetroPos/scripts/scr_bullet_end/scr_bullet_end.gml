if bullet_number == 0 {
	var index = ds_list_find_index(o_player.gun_slot, o_player.player_gun);
	ds_list_delete(o_player.gun_slot, index);	
	scr_playergun_change(o_player.gun_slot[| index - 1]);
	instance_destroy();
}