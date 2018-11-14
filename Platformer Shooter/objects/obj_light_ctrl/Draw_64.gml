//Debug
draw_set_color(c_white);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

draw_text(2, 20, "FPS:"+string(fps));
draw_text(2, 36, "FPS_REAL:"+string(fps_real));
show_debug_overlay(true);