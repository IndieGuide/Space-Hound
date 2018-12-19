if live_call() return live_result;
if !m_ui_flag exit;

draw_sprite(SUiLineWeaponToBullet, 0, 506, 976);
draw_sprite_ext(SUiGunBoard, 0, m_gui_x ,m_gui_y, 0.8, 0.8, 0, c_white, 1);
draw_sprite(SUiHelpLeftMouse, 0, m_gui_x + 80, m_gui_y + 15);