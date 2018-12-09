/// @description 
draw_text(5,5,string(fps));
if !global.debug_flag exit;
show_debug_overlay(true);
//draw_sprite_ext(s_debug_bg, image_index, 0, 0, 10, 6, 0, c_white, 0.6);
draw_set_font(global.font_zkhappy);
draw_text(130, 10, "Debug模式");
draw_text(10, 30, "帧数  ：    " + string(fps_real));

scr_debug_draw_obj_count(10, 60 , o_freelight_parent, "灯光");
//scr_debug_draw_obj_count(10, 90 , o_enemy_normal1_parent, "普通敌人");
//scr_debug_draw_obj_count(10, 120 , o_enemy_normal2_parent, "进阶敌人");
//scr_debug_draw_obj_count(10, 150 , o_gun_parent, "武器");
//scr_debug_draw_obj_count(10, 180 , o_gun_bullet_parent_enemy, "敌人子弹");

//draw_text(250, 60, "camera_get_view_width:" + string(camera_get_view_width(view_camera[0])));
//draw_text(250, 90, "camera_get_view_height:" + string(camera_get_view_height(view_camera[0])));
//draw_text(250, 120, "camera_get_view_x:" + string(camera_get_view_x(view_camera[0])));
//draw_text(250, 150, "camera_get_view_y:" + string(camera_get_view_y(view_camera[0])));
//draw_text(250, 180, "display_get_gui_width:" + string(display_get_gui_width()));
//draw_text(250, 210, "display_get_gui_height:" + string(display_get_gui_height()));
//draw_text(250, 240, "display_get_width:" + string(display_get_width()));
//draw_text(250, 270, "display_get_height:" + string(display_get_height()));
//draw_text(250, 300, "window_mouse_get_x:" +string(window_mouse_get_x() ));
//draw_text(250, 330, "window_mouse_get_y:" +string(window_mouse_get_y() ));
//draw_text(250, 360, "view_get_hport:" +string(view_get_hport(0) ));
//draw_text(250, 390, "view_get_wport:" +string(view_get_wport(0) ));
//draw_text(250, 420, "window_get_width:" +string(window_get_width() ));
//draw_text(250, 450, "window_get_height:" +string(window_get_height() ));
//draw_text(250, 480, "mouse_x:" +string(mouse_x-camera_get_view_x(view_camera[0])));
//draw_text(250, 510, "mouse_y:" +string(mouse_y- camera_get_view_y(view_camera[0])));
//if instance_exists(o_player_sword_bullettime)
//	draw_text(250, 540, "sword_image_index:" + string(o_player_sword_bullettime.image_index));


