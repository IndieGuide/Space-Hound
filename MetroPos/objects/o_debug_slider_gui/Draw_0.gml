/// @description 

draw_sprite(s_debug_slider_line, 0, default_x, default_y);
draw_self();
draw_set_color(c_yellow)
draw_set_font(global.font_black);
draw_set_valign(fa_middle);
draw_text(default_x-50,default_y,value_string +"   "+ value_name +"  "+ string(variable_instance_get(bind_obj,value_name)));