/// @description 开启debug模式

global.debug_flag = scr_common_flag_change(global.debug_flag);




if global.debug_flag {

	if (room == r_test_layer){
		//色温时间控制条
		time_slider = instance_create_layer(x,y,"UILayer",o_debug_slider_gui);
		scr_debug_slider_setting(time_slider,inst_557D436D,"time",0,1,debug_slider_pos_x,debug_slider_pos_y);
		ds_list_add(debug_slider_list,time_slider);
		
	}
	
} else {
	
	if(room == r_test_layer) {
		for (var i = 0; i < ds_list_size(debug_slider_list); i++) {
			instance_destroy(debug_slider_list[| i]);
		}
		ds_list_clear(debug_slider_list);
	}
	
}