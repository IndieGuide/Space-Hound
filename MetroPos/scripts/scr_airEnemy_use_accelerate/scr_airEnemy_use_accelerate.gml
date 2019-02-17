var dir = point_direction(x,y,o_player.x,o_player.y);
m_speed[h] += lengthdir_x(acceleration_,dir);
m_speed[v] += lengthdir_y(acceleration_,dir);