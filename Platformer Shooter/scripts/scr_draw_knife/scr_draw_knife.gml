/// @description scr_draw_knife(x,y,scale,dir)弃用
/// @param x
/// @param y
/// @param scale
/// @param dir

var x_ = argument0;
var y_ = argument1;
var scale_ = argument2;
var dir_ = argument3;
var flag_ = true;
//近战攻击
if mouse_check_button_pressed(mb_right) {
	draw_xiaodao1 = true;
} 
if draw_xiaodao1 == true && draw_xiaodao2_start == false {
	draw_sprite_ext(s_xiaodao1, img_xiaodao, x_, y_, dir_ * scale_, scale_, 0, c_white,1);
	gpu_set_fog(false,c_silver,0,1);
	flag_ = false;
	img_xiaodao ++;
	if (mouse_check_button_pressed(mb_right) && img_xiaodao > 1)
		draw_xiaodao2 = true;
	if img_xiaodao == 14 {
		draw_xiaodao1 = false;
		img_xiaodao = 0;
		if draw_xiaodao2 == true
			draw_xiaodao2_start = true;
	}
}
if draw_xiaodao2 == true && draw_xiaodao2_start == true {
	draw_sprite_ext(s_xiaodao2, img_xiaodao, x_, y_, dir_ * scale_, scale_, 0, c_white,1);
	gpu_set_fog(false,c_silver,0,1);
	flag_ = false;
	img_xiaodao ++;
	if img_xiaodao == 14 {
		draw_xiaodao2 = false;
		draw_xiaodao2_start = false;
		img_xiaodao = 0;
		knifeing1 = true;
		knifeing2 = true;
	}
}
return flag_;