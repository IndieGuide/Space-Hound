var hinput = keyboard_check(vk_right)-keyboard_check(vk_left);
if hinput != 0 {
	var flipped=get_face;
	image_speed=flipped*hinput*1.2;
} else {
	if (abs(speed_[h]) <= 1 && abs(speed_[v]) <= 1)
		return true;
}
return false;