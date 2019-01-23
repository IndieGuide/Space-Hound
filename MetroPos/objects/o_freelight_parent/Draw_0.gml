/// @description Insert description here
// You can write your code in this editor
if light_debug_mode && global.debug_flag
	draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,true);
else {
	light_debug_mode = false;
	debug_slider_flag = false;
}

