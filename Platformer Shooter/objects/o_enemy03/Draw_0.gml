/// @description Draw the player and gun
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
	    draw_sprite_ext(s_player,image_index, x,y,flipped,1,0,image_blend,image_alpha);
	    break;
	case L_DASH:
		draw_sprite_ext(s_player_dash_left,image_index, x,y,flipped,1,0,image_blend,image_alpha);
		break;
	case R_DASH:
		draw_sprite_ext(s_player_dash_right,image_index, x,y,flipped,1,0,image_blend,image_alpha);
		break;
	default:
		draw_sprite_ext(s_player,image_index, x,y,flipped,1,0,image_blend,image_alpha);
		break;
}
	//draw_sprite_ext(s_player,image_index, x,y,flipped,1,0,image_blend,image_alpha);
	//draw_sprite_ext(s_player,image_index, x,y,x_scale_*flipped,y_scale_,0,image_blend,image_alpha);教程原代码
		


#region 老的绘制枪代码
	////Draw the gun

	//draw_sprite_ext(s_gun,0, x-4*flipped,y-sprite_height/2,1,flipped,dir,image_blend,image_alpha);
	
	//gpu_set_fog(false,c_silver,0,1);
#endregion
//绘制小刀
var flag_ = scr_draw_knife(x-5,y-10,0.8,flipped);


//绘制枪
scr_draw_gun(flipped,dir,flag_);




