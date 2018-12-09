/// @description 灯光debug代码
if !global.debug_flag exit;
if mouse_check_button_pressed(mb_left) && collision_point(mouse_x,mouse_y,self,1,0)  {
	light_debug_mode = true;

	//亮度控制条
	with(o_debug){
		if !other.debug_slider_flag {
			strength_slider = instance_create_layer(x,y,"UILayer",o_debug_slider_gui);
			scr_debug_slider_setting(strength_slider,other,"light_strength", 0, 1, debug_slider_pos_x, debug_slider_pos_y+20*ds_list_size(debug_slider_list));
			ds_list_add(debug_slider_list,time_slider);
		}
	}
	debug_slider_flag = true;
}