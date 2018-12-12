///// @description 根据武器创建子弹
//if (!instance_exists(player_gun))
//	exit;
//if (alarm[0] > 0)
//	exit;
//var bullet = instance_create_layer(x + get_flipped*player_gun.gun_point_x, y - player_gun.gun_point_y,"Instances",player_gun.gun_bullet);

//bullet.direction = (get_flipped-1)*(-90);
//bullet.image_angle = (get_flipped-1)*(-90);
//alarm[0]= bullet_cooldown_;
//shooted_flag = true;