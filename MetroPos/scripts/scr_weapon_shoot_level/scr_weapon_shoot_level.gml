with (o_player) {
var point_x_ = x + get_face * other.m_weapon_point_x;
	var point_y_ = y - other.m_weapon_point_y;
	var bullet = instance_create_layer(point_x_, point_y_, "Instances", other.m_weapon_bullet);
	bullet.direction = (get_face-1)*(-90);
	bullet.image_angle = (get_face-1)*(-90);
	alarm[0] = player_weapon_cooldown;//枪械冷却计时器
	shooted_flag = true;
	
}