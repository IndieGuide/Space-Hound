var dir = point_direction(x,y,mouse_x,mouse_y);
		
if (dir >= 90 && dir <= 270) {
	var gun_x = x + lengthdir_y(height_, dir);
	var gun_y = y - lengthdir_x(height_, dir);
}
else {
	var gun_x = x - lengthdir_y(height_, dir);
	var gun_y = y + lengthdir_x(height_, dir);
}
var x_offset=lengthdir_x(width_,dir);
var y_offset=lengthdir_y(width_,dir);

var bullet = instance_create_layer(gun_x + x_offset, gun_y + y_offset,"Instances",m_weapon_bullet);

bullet.direction=dir;
bullet.image_angle=dir;//控制子弹图像的角度

o_player.alarm[0]= o_player.player_weapon_cooldown;