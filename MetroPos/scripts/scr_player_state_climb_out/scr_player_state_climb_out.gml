if (y < state_ins_bind.top_y) {
	
	state_ins_bind = 1;
	//stop_by_solid_flag = true;
	return enum_player_state.CLIMBED;
}
if (key_space_pressed) {
	return enum_player_state.JUMP;
}
state_ins_bind = 2;
//stop_by_solid_flag = true;
return enum_player_state.STAND;