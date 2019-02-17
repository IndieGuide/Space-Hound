if (alarm[6] == -1) {
	return true;
}
m_speed[h] += get_face * acceleration_ * 3;
m_speed[h] = clamp(m_speed[h],-max_speed_*3,max_speed_*3);


return false;