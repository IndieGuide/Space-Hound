var dir = point_direction(x,y,o_player.x,o_player.y);
speed_[h] += lengthdir_x(acceleration_,dir);
speed_[v] += lengthdir_y(acceleration_,dir);