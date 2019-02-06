/// @description 敌人的碰撞回弹
if point_in_rectangle(x,y,0,0,room_width,room_height) {
	if x==other.x && y==other.y{
		x+=sign(other.id-id);
	}
	scr_collision_physics_effect(.3);
}