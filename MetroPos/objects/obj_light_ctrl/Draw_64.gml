//Debug
draw_set_color(c_white);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

draw_text(2, 20, "真实帧率:"+string(fps));
draw_text(2, 50, "满载帧率:"+string(fps_real));
draw_text(2, 80, "是否开启光照:"+string((light_enable)?"是":"否"));
show_debug_overlay(true);