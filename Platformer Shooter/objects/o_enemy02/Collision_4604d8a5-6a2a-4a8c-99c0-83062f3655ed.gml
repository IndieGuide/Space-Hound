/// @description 敌人的碰撞回弹
if !point_in_rectangle(x,y,0,0,room_width,room_height) exit;

if x==other.x && y==other.y{
	x+=sign(other.id-id);
}

var dir_ =point_direction(other.x,other.y,x,y);
if dir_ < 0
	hspeed_ += lengthdir_x(.1 ,-dir_);
else if dir_ >= 0
	hspeed_ += lengthdir_x(.1 ,dir_);