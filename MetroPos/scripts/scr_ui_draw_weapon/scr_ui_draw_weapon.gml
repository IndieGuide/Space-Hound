if live_call() return live_result;
if !m_ui_flag exit;
if !instance_exists(m_bind_weapon) exit;
draw_sprite(SUiGunBoard, 0, m_gui_x , m_gui_y);
draw_sprite_ext(m_bind_weapon.m_weapon_icon, 0, m_gui_x + 46 , m_gui_y + 46, 1, 1, 0, c_white, 1);
draw_sprite(SUiHelpLeftMouse, 0, m_gui_x - 30, m_gui_y + 22);
draw_set_font(global.font_black);
draw_text(m_gui_x + 5, m_gui_y + 94, m_bind_weapon.m_weapon_name);
