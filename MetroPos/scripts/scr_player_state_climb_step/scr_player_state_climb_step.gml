if (y < ins_bind.bottom_y && y > ins_bind.top_y) {
	var hinput = keyboard_check(vk_down)-keyboard_check(vk_up);
	if hinput != 0 {
		speed_[v] += hinput * acceleration_;
		speed_[v]= clamp(speed_[v],-max_speed_*0.5,max_speed_*0.5);
	}else{
		speed_[v]=lerp(speed_[v],0,friction_);
	}
	image_speed = .8*hinput;
} else if (y >= ins_bind.bottom_y) {
	y = ins_bind.bottom_y - 1;
	return true;
}
if (y - player_height + 10 <= ins_bind.top_y) {
	y = ins_bind.top_y - 1;
	return true;
}



return false;