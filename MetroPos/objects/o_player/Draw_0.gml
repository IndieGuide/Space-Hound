//if(live_call()) return live_result;
/// @description 画玩家和枪
var dir = point_direction(x,y-sprite_height/2,mouse_x,mouse_y);
var flipped=get_face;
image_xscale = get_face;

//var flash_interval=16;
//if scr_draw_is_flash_interval_off(alarm[1],flash_interval){
//	gpu_set_fog(false,c_silver,0,1);
//}else{
//	gpu_set_fog(true,c_silver,0,1);
//}


//Draw the player

switch (state_) {
	case enum_player_state.STAND:
	case enum_player_state.MOVE:
	case enum_player_state.JUMP:
	case enum_player_state.JUMP_TWICE:
	case enum_player_state.ROLL:
	case enum_player_state.SQUART:
	case enum_player_state.SHOOT:
	case enum_player_state.CLIMB:
	case enum_player_state.FALL:
		draw_sprite_ext(sprite_index,image_index, x,y,flipped,1,0,image_blend,image_alpha);
		break;
	case enum_player_state.CLIMBED:
		draw_sprite_ext(sprite_index,image_index, anime_x,anime_y,flipped,1,0,image_blend,image_alpha);
		break;
	case enum_player_state.SHOOT_AIM:
		var flipped = (mouse_x>x)*2-1;
		get_face = flipped;
		var dir = point_direction(x-10*flipped,y-40,mouse_x,mouse_y);
		draw_sprite_ext(sprite_index,image_index, x,y,flipped,1,0,image_blend,image_alpha);
		with (player_weapon) {
			//Draw the gun
			draw_sprite_ext(m_weapon_hand_anime,0, x, y,1,flipped,dir,other.image_blend,other.image_alpha);
		}
		break;
	default:
		draw_sprite_ext(sprite_index,image_index, x,y,flipped,1,0,image_blend,image_alpha);
		break;
}
	//draw_sprite_ext(s_player,image_index, x,y,flipped,1,0,image_blend,image_alpha);
	//draw_sprite_ext(s_player,image_index, x,y,x_scale_*flipped,y_scale_,0,image_blend,image_alpha);教程原代码



//绘制枪
//scr_draw_gun(flipped,dir,!sword_flag && !change_gun_flag && move_state != ROLL );

//绘制目镜光

if global.bullet_time_flag && lens_eyes_amount < 60
	lens_eyes_amount += 1;
else if !global.bullet_time_flag && lens_eyes_amount > 0
	lens_eyes_amount -= 2;

//draw_set_color(c_red);
//draw_lensflare(x ,y - 50,400,5,0.5,2,30,sin(degtorad(lens_eyes_amount)));


//debug代码
if global.debug_flag{
	draw_point(x,y);
	draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,1)
}

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