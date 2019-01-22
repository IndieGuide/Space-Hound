///@description scr_freelight_setting_scale_ext
///@param color
///@param flick
///@param scale
///@param centerlight
light_color_index = argument0;
light_flick = argument1;
light_xscale = argument2;
light_yscale = argument3;
//绘制中心光源
if argument4 == true
	scr_freelight_centerlight();
	