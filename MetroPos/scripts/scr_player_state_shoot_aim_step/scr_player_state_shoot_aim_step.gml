if !key_shift {
	return true;
}

if mouse_check_button_pressed(mb_left) {
	//var dir = point_direction(player_weapon.x,player_weapon.y,mouse_x,mouse_y);
		
	//if (dir >= 90 && dir <= 270) {
	//	var gun_x = player_weapon.x + lengthdir_x(player_weapon.height_, dir);
	//	var gun_y = player_weapon.y - lengthdir_y(player_weapon.height_, dir);
	//}
	//else {
	//	var gun_x = player_weapon.x - lengthdir_x(player_weapon.height_, dir);
	//	var gun_y = player_weapon.y + lengthdir_y(player_weapon.height_, dir);
	//}
	//var x_offset=lengthdir_x(player_weapon.width_,dir);
	//var y_offset=lengthdir_y(player_weapon.width_,dir);
	call(player_weapon.do_shoot);
	if place_meeting(x,y+1,o_solid)
		speed_[h] += -get_face * acceleration_*3;
	else
		speed_[h] += -get_face * acceleration_*20;

}

return false;