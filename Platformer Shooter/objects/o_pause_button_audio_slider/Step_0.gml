/// @description Insert description here
// You can write your code in this editor
bind_obj.bgvolumn = 1*(floor((x - default_x)*(100/line_length))/100);
if (left_down_flag && mouse_check_button_released(mb_left)) {
	left_down_flag = false;
}

if left_down_flag {
	x = mouse_x;
	if (mouse_x >= default_x + line_length) {
		x = default_x + line_length;
	}
	if(mouse_x <= default_x){
		x = default_x;
	}
}