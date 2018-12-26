//if live_call() return live_result;
if !m_ui_flag exit;
if !instance_exists(m_bind_weapon) exit;

//副武器
draw_sprite_ext(m_bind_weapon_two_board, 0, m_gui_x + 50 , m_gui_y - 20, 0.8, 0.8, 0, c_white, 0.8);
draw_sprite_ext(m_bind_weapon_two_icon, 0, m_gui_x + 50 + 36.8 , m_gui_y - 20 + 36.8, 0.8, 0.8, 0, c_white, 0.8);
//主武器
draw_sprite_ext(m_bind_weapon_board, 0, m_gui_x , m_gui_y, 1, 1, 0, c_white, 1);
draw_sprite_ext(m_bind_weapon_icon, 0, m_gui_x + 46 , m_gui_y + 46, 1, 1, 0, c_white, 1);
draw_sprite_ext(SUiHelpLeftMouse, 0, m_gui_x - 30, m_gui_y + 22, 1, 1, 0, c_white, 1);
//主武器配置槽
//var color_ = draw_getpixel_ext(503,976);
//draw_set_color(color_);
//draw_rectangle(506, 976, 599, 979, 0);
draw_sprite_ext(m_bind_weapon_line, 0, 505, 976, 1, 1, 0, c_white, 1);
draw_sprite_ext(m_bind_weapon_board, 0, m_gui_x+185 ,m_gui_y+9, 0.8, 0.8, 0, c_white, 1);
draw_sprite_ext(SUiHelpMiddleMouse, 0, m_gui_x+185 + 80, m_gui_y + 9 + 15, 1, 1, 0, c_white, 1);
draw_sprite_ext(SUiBulletCoolMask, 0, m_gui_x+185+3 ,m_gui_y + 9 + 3, 0.8, 0.8, 0, c_white, 1);
//主武器名
draw_set_font(global.font_black);
draw_text(m_gui_x + 5, m_gui_y + 94, m_bind_weapon.m_weapon_name);
