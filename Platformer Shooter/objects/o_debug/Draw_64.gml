/// @description 
if !debug_flag exit;
draw_sprite_ext(s_debug_bg, image_index, 0, 0, 5, 3, 0, c_white, 0.6);
draw_text(130, 10, "Debug模式");
draw_text(10, 20, "帧数  ：    " + string(fps_real));

scr_debug_draw_obj_count(10, 30 , o_enemy_parent, "敌人");
scr_debug_draw_obj_count(10, 40 , o_enemy_normal1_parent, "普通敌人");
scr_debug_draw_obj_count(10, 50 , o_enemy_normal2_parent, "进阶敌人");
scr_debug_draw_obj_count(10, 60 , o_gun_parent, "武器");
scr_debug_draw_obj_count(10, 70 , o_gun_bullet_parent_enemy, "敌人子弹");

draw_text(200, 30, "camera_get_view_width:" + string(camera_get_view_width(view_camera[0])));
draw_text(200, 40, "camera_get_view_height:" + string(camera_get_view_height(view_camera[0])));
draw_text(200, 50, "camera_get_view_x:" + string(camera_get_view_x(view_camera[0])));
draw_text(200, 60, "camera_get_view_y:" + string(camera_get_view_y(view_camera[0])));
draw_text(200, 70, "display_get_gui_width:" + string(display_get_gui_width()));
draw_text(200, 80, "display_get_gui_height:" + string(display_get_gui_height()));
draw_text(200, 90, "display_get_width:" + string(display_get_width()));
draw_text(200, 100, "display_get_height:" + string(display_get_height()));
draw_text(200, 110, "window_mouse_get_x:" +string(window_mouse_get_x() ));
draw_text(200, 120, "window_mouse_get_y:" +string(window_mouse_get_y() ));
draw_text(200, 130, "view_get_hport:" +string(view_get_hport(0) ));
draw_text(200, 140, "view_get_wport:" +string(view_get_wport(0) ));
draw_text(200, 150, "window_get_width:" +string(window_get_width() ));
draw_text(200, 160, "window_get_height:" +string(window_get_height() ));
draw_text(200, 170, "mouse_x:" +string(mouse_x-camera_get_view_x(view_camera[0])));
draw_text(200, 180, "mouse_y:" +string(mouse_y- camera_get_view_y(view_camera[0])));

