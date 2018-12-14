if (y < state_ins_bind.bottom_y && y > state_ins_bind.top_y) {
	var hinput = key_down - key_up;
	if hinput != 0 {
		speed_[v] += hinput * acceleration_;
		speed_[v]= clamp(speed_[v],-max_speed_*0.5,max_speed_*0.5);
	}else{
		speed_[v]=lerp(speed_[v],0,friction_);
	}
	image_speed = .8*hinput;
} else if (y >= state_ins_bind.bottom_y) {
	y = state_ins_bind.bottom_y - 1;
	return true;
}
if (y - player_height + 10 <= state_ins_bind.top_y) {
	y = state_ins_bind.top_y - 1;
	return true;
}
if (key_space_pressed && !place_meeting(x,y,o_solid)) {
	return true;
}


return false;