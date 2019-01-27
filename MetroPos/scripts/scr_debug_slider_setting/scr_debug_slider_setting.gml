///@description scr_debug_slider_setting
///@param slider_id
///@param bind_obj
///@param bind_value_name
///@param value_min
///@param value_max
///@param gui_x
///@param gui_y
///@param value_str

with(argument0) {
	
	bind_obj = argument1;
	value_name = argument2; 
	value_min = argument3;
	value_max = argument4;
	create_obj = noone;
	line_length = 78;

	screen_x = argument5;
	screen_y = argument6;
	value_string = argument7;
	default_x = camera_get_view_x(view_camera[0]) + screen_x;
	default_y = camera_get_view_y(view_camera[0]) + screen_y;
	left_down_flag = false;

	value = variable_instance_get(bind_obj,value_name);
	value_in_per = (value - value_min)/(value_max - value_min);
	x = value_in_per*line_length + default_x;	
}