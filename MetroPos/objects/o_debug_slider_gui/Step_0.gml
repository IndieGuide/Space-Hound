/// @description Insert description here
// You can write your code in this editor

default_x = camera_get_view_x(view_camera[0]) + screen_x;
default_y = camera_get_view_y(view_camera[0]) + screen_y;
x = default_x+value_in_per*line_length;
y = default_y;


if (left_down_flag && mouse_check_button_released(mb_left)) {
	left_down_flag = false;
}

if left_down_flag {
	x = mouse_x;
	value = (value_max-value_min)/line_length * (x - default_x);
	value_in_per = (value - value_min)/(value_max - value_min);
	if (mouse_x >= default_x + line_length) {
		x = default_x + line_length;
		value = value_max;
		value_in_per = (value - value_min)/(value_max - value_min);
	}
	if(mouse_x <= default_x){
		x = default_x;
		value = value_min;
		value_in_per = (value - value_min)/(value_max - value_min);
	}
}


variable_instance_set(bind_obj,value_name,value);
