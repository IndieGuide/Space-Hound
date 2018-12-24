///@description scr_freelight_setting_strength_instance
///@param light_instance
///@param color
///@param strength	0-1
///@param flick
///@param centerlight
with (argument0) {
	light_color_index = argument1;
	light_strength = argument2;
	light_flick = argument3;
	//绘制中心光源
	if (argument4 == true)
		scr_freelight_centerlight();
}