/// @param size
/// @param dir
var size_ = argument0;
var dir = argument1;

if dir >=30 && dir <= 90 
	dir = 30;
else if dir >90 && dir <=120
	dir = 120;
else if dir >= 240 && dir <= 270
	dir = 240;
else if dir > 270 && dir <= 300
	dir = 300;
m_speed[h] +=lengthdir_x(size_,dir);
m_speed[v] +=lengthdir_y(size_,dir);