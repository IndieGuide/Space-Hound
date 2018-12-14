//y-= 2;
alarm[3] = scr_common_bullet_time_var_ext(roll_cant_time,2);
mask_index = SPlayerMaskStand;
if key_down && place_meeting(x, y+1, o_solid){
	return enum_player_state.SQUART;
}
return enum_player_state.STAND;