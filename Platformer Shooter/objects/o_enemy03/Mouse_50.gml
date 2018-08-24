/// @description Create a bullet
if !instance_exists(player_gun) 
	exit;
if player_gun.id_ == 0{
	
	if alarm[0]<=0{
		var dir = point_direction(x,y-sprite_height/2,mouse_x,mouse_y);
		var flipped=(mouse_x>x)*2-1;
		var gun_x=x-4*flipped;
		var x_offset=lengthdir_x(20,dir);
		var y_offset=lengthdir_y(20,dir);

		var bullet = instance_create_layer(gun_x+x_offset,y-sprite_height/2+y_offset,"Instances",o_bullet0);
		bullet.direction=dir;
		bullet.image_angle=dir;//控制子弹图像的角度
		alarm[0]=bullet_cooldown_;
	}
}
if player_gun.id_ == 1{
	
	if alarm[0]<=0{
		var dir = point_direction(x,y-sprite_height/2,mouse_x,mouse_y);
		var flipped=(mouse_x>x)*2-1;
		var gun_x=x-4*flipped;
		var x_offset=lengthdir_x(20,dir);
		var y_offset=lengthdir_y(20,dir);


		var bullet = instance_create_layer(gun_x+x_offset,y-sprite_height/2+y_offset,"Instances",o_bullet);
		bullet.direction=dir;
		bullet.image_angle=dir;//控制子弹图像的角度
		alarm[0]=bullet_cooldown_;
		
		//子弹减少
		player_gun.bullet_number--;
	}

}

if player_gun.id_ == 2{
	
	if alarm[0]<=0{
		var dir = point_direction(x,y-sprite_height/2,mouse_x,mouse_y);
		var flipped=(mouse_x>x)*2-1;
		var gun_x=x-4*flipped;
		var x_offset=lengthdir_x(20,dir);
		var y_offset=lengthdir_y(20,dir);


		var bullet = instance_create_layer(gun_x+x_offset,y-sprite_height/2+y_offset,"Instances",o_bullet1);
		bullet.direction=dir;
		bullet.image_angle=dir;//控制子弹图像的角度
		alarm[0]=bullet_cooldown_;
		
		//子弹减少
		player_gun.bullet_number--;
	}
}
  
