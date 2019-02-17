var hinput = key_right - key_left;
if hinput != 0 {
	var flipped=get_face;
	image_speed=flipped*hinput*1.2;
} else {
	if (abs(m_speed[h]) <= 1 && abs(m_speed[v]) <= 1)
		return true;
}
return false;