if (alarm[6] == -1) {
	return true;
}
speed_[h] += get_face * acceleration_ * 3;
speed_[h] = clamp(speed_[h],-max_speed_*3,max_speed_*3);


return false;