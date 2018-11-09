/// Create a bullet
var bullet_dir = argument0;
if alarm[0]<=0 && alarm[11] == -1{
	var dir = bullet_dir;
	if (dir >= 90 && dir <= 270) {
		var gun_x = default_gun.x + lengthdir_y(default_gun.height_, dir);
		var gun_y = default_gun.y - lengthdir_x(default_gun.height_, dir);
	}
	else {
		var gun_x = default_gun.x - lengthdir_y(default_gun.height_, dir);
		var gun_y = default_gun.y + lengthdir_x(default_gun.height_, dir);
	}
	var x_offset=lengthdir_x(default_gun.width_,dir);
	var y_offset=lengthdir_y(default_gun.width_,dir);
		
	var spark = instance_create_layer(gun_x + x_offset, gun_y + y_offset,"Instances",default_gun.gun_spark);
	var bullet = instance_create_layer(gun_x + x_offset, gun_y + y_offset,"Instances",default_gun.gun_bullet);
	spark.direction = bullet_dir;
	spark.image_angle = bullet_dir;
	bullet.direction = bullet_dir;
	bullet.image_angle = bullet_dir;//控制子弹图像的角度
	alarm[0] = bullet_cooldown_;
	gun_clip --;
	if (gun_clip <= 0) {
		alarm[11] = default_gun.change_clip_time;
		gun_clip = default_gun.bullet_clip;
	}
}