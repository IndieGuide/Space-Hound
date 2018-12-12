if (y < ins_bind.top_y) {
	
	ins_bind = noone;
	stop_by_solid_flag = true;
	return enum_player_state.CLIMBED;
}

stop_by_solid_flag = true;
return enum_player_state.STAND;