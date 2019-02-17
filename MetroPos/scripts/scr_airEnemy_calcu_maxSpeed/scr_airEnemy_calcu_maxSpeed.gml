var move_dir = point_direction(0,0,m_speed[h],m_speed[v]);
m_speed[h]=lengthdir_x(max_speed_,move_dir);
m_speed[v]=lengthdir_y(max_speed_,move_dir);