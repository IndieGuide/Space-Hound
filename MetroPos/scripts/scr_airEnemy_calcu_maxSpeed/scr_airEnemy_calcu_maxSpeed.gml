var move_dir = point_direction(0,0,speed_[h],speed_[v]);
speed_[h]=lengthdir_x(max_speed_,move_dir);
speed_[v]=lengthdir_y(max_speed_,move_dir);