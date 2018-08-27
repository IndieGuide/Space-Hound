/// @description 画玩家和枪
var dir = point_direction(x,y-sprite_height/2,mouse_x,mouse_y);
var flipped=(mouse_x>x)*2-1;


var flash_interval=16;
if scr_draw_is_flash_interval_off(alarm[1],flash_interval){
	gpu_set_fog(false,c_silver,0,1);
}else{
	gpu_set_fog(true,c_silver,0,1);
}


//Draw the player
	 
switch (move_state) {
	case MOVE:
		if scr_is_on_twice_jump()
			draw_sprite_ext(s_player_jump_twice,image_index, x,y,flipped,1,0,image_blend,image_alpha);
		else {
			var hinput = keyboard_check(vk_right)-keyboard_check(vk_left);
			if hinput != 0
				draw_sprite_ext(s_player,image_index, x,y,flipped,1,0,image_blend,image_alpha);
			else
				draw_sprite_ext(s_player,image_number - 1, x,y,flipped,1,0,image_blend,image_alpha);
		}
	    break;
	case DASH:
		draw_sprite_ext(s_player_dash,dash_image_index, x,y,flipped,1,0,image_blend,image_alpha);
		break;
	//case L_DASH:
	//	draw_sprite_ext(s_player_dash_left,image_index, x,y,flipped,1,0,image_blend,image_alpha);
	//	break;
	//case R_DASH:
	//	draw_sprite_ext(s_player_dash_right,image_index, x,y,flipped,1,0,image_blend,image_alpha);
	//	break;
	case ROLL:
		var roll_dir = sign(speed_[h]);
		draw_sprite_ext(s_player_roll,image_index, x,y,roll_dir,1,0,image_blend,image_alpha);
		break;
	case SQUART:
		draw_sprite_ext(s_player_squat,image_index, x,y,flipped,1,0,image_blend,image_alpha);
		break;
	default:
		draw_sprite_ext(s_player,image_index, x,y,flipped,1,0,image_blend,image_alpha);
		break;
}
	//draw_sprite_ext(s_player,image_index, x,y,flipped,1,0,image_blend,image_alpha);
	//draw_sprite_ext(s_player,image_index, x,y,x_scale_*flipped,y_scale_,0,image_blend,image_alpha);教程原代码

#region 弃用小刀绘制代码
////绘制小刀
//var flag_ = scr_draw_knife(x-5,y-10,0.8,flipped);
#endregion

//绘制枪
scr_draw_gun(flipped,dir,!sword_flag && !change_gun_flag && move_state != ROLL && !sword_bullet_flag);

#region 老的绘制枪代码
	////Draw the gun

	//draw_sprite_ext(s_gun,0, x-4*flipped,y-sprite_height/2,1,flipped,dir,image_blend,image_alpha);
	
	//gpu_set_fog(false,c_silver,0,1);
#endregion


#region 测试用代码
////测试瞄准代码
//if (dir >= 90 && dir <= 270) {
//	var gun_x = player_gun.x + lengthdir_y(7, dir);
//	var gun_y = player_gun.y - lengthdir_x(7, dir);
//}
//else {
//	var gun_x = player_gun.x - lengthdir_y(7, dir);
//	var gun_y = player_gun.y + lengthdir_x(7, dir);
//}
//var x_offset=lengthdir_x(38,dir);
//var y_offset=lengthdir_y(38,dir);
//draw_point(player_gun.x,player_gun.y);
//draw_point(gun_x,gun_y);
//draw_point(gun_x + x_offset, gun_y + y_offset);
#endregion