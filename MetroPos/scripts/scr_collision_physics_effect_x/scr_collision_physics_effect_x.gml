/// @param size
/// @param collision_inst
var size_ = argument0;
var collision_inst = argument1;
with (collision_inst) {
	var other_x = x;
	var other_y = y;
}
var dir =point_direction(other_x,other_y,x,y);
m_speed[h] +=lengthdir_x(size_,dir);