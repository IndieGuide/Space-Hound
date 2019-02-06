/// @description 开启debug模式

global.debug_flag = scr_common_flag_change(global.debug_flag);




if global.debug_flag {

	if (room == r_test_layer){
		////全局时间控制条
		//time_slider = instance_create_layer(x,y,"UILayer",o_debug_slider_gui);
		//scr_debug_slider_setting(time_slider,inst_557D436D,"time",0,1,debug_slider_pos_x,debug_slider_pos_y);
		//ds_list_add(debug_slider_list,time_slider);
		//con
		con_slider = instance_create_layer(x,y,"UILayer",o_debug_slider_gui);
		scr_debug_slider_setting(con_slider,inst_557D436D,"con",0,1,debug_slider_pos_x,debug_slider_pos_y+0,"对比度");
		ds_list_add(debug_slider_list,con_slider);
		//sat
		sat_slider = instance_create_layer(x,y,"UILayer",o_debug_slider_gui);
		scr_debug_slider_setting(sat_slider,inst_557D436D,"sat",0,1,debug_slider_pos_x,debug_slider_pos_y+20,"饱和度");
		ds_list_add(debug_slider_list,sat_slider);
		//brt
		brt_slider = instance_create_layer(x,y,"UILayer",o_debug_slider_gui);
		scr_debug_slider_setting(brt_slider,inst_557D436D,"brt",0,2,debug_slider_pos_x,debug_slider_pos_y+40, "亮度");
		ds_list_add(debug_slider_list,brt_slider);
		//pop_s
		pop_s_slider = instance_create_layer(x,y,"UILayer",o_debug_slider_gui);
		scr_debug_slider_setting(pop_s_slider,inst_557D436D,"pop_s",0,3,debug_slider_pos_x,debug_slider_pos_y+60,"光扩展");
		ds_list_add(debug_slider_list,pop_s_slider);	
		//pop_t
		pop_t_slider = instance_create_layer(x,y,"UILayer",o_debug_slider_gui);
		scr_debug_slider_setting(pop_t_slider,inst_557D436D,"pop_t",0,1,debug_slider_pos_x,debug_slider_pos_y+80,"光心");
		ds_list_add(debug_slider_list,pop_t_slider);	
		//r
		col_r_slider = instance_create_layer(x,y,"UILayer",o_debug_slider_gui);
		scr_debug_slider_setting(col_r_slider,inst_557D436D,"col_r",0,1,debug_slider_pos_x,debug_slider_pos_y+100,"色调红");
		ds_list_add(debug_slider_list,col_r_slider);	
		//g
		col_g_slider = instance_create_layer(x,y,"UILayer",o_debug_slider_gui);
		scr_debug_slider_setting(col_g_slider,inst_557D436D,"col_g",0,1,debug_slider_pos_x,debug_slider_pos_y+120,"色调绿");
		ds_list_add(debug_slider_list,col_g_slider);	
		//b
		col_b_slider = instance_create_layer(x,y,"UILayer",o_debug_slider_gui);
		scr_debug_slider_setting(col_b_slider,inst_557D436D,"col_b",0,1,debug_slider_pos_x,debug_slider_pos_y+140,"色调蓝");
		ds_list_add(debug_slider_list,col_b_slider);	
	}
	
} else {
	
	if(room == r_test_layer) {
		for (var i = 0; i < ds_list_size(debug_slider_list); i++) {
			instance_destroy(debug_slider_list[| i]);
		}
		ds_list_clear(debug_slider_list);
	}
	
}