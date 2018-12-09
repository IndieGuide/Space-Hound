///@description scr_freelight_setting
///@param color
///@param strength	0-1
///@param flick
///@param centerlight
light_color_index = argument0;
light_strength = argument1;
light_flick = argument2;
//绘制中心光源
if argument3 == true
	scr_freelight_centerlight();