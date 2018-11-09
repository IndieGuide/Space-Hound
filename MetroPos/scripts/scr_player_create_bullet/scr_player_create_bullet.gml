/// @description 创建子弹，火花的计算及代码

var dir = point_direction(x,y-sprite_height/2,mouse_x,mouse_y);
		
if (dir >= 90 && dir <= 270) {
	var gun_x = player_gun.x + lengthdir_y(player_gun.height_, dir);
	var gun_y = player_gun.y - lengthdir_x(player_gun.height_, dir);
}
else {
	var gun_x = player_gun.x - lengthdir_y(player_gun.height_, dir);
	var gun_y = player_gun.y + lengthdir_x(player_gun.height_, dir);
}
var x_offset=lengthdir_x(player_gun.width_,dir);
var y_offset=lengthdir_y(player_gun.width_,dir);
		
var spark = instance_create_layer(gun_x + x_offset, gun_y + y_offset,"Instances",player_gun.gun_spark);
var bullet = instance_create_layer(gun_x + x_offset, gun_y + y_offset,"Instances",player_gun.gun_bullet);
spark.direction=dir;
spark.image_angle=dir;
bullet.direction=dir;
bullet.image_angle=dir;//控制子弹图像的角度
alarm[0]= bullet_cooldown_;
shooted_flag = true;