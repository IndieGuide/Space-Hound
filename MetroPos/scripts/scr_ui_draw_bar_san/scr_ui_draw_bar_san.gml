if live_call() return live_result;
if !m_ui_flag exit;

draw_sprite(SUiHpBar, 0, m_gui_x ,m_gui_y);
draw_set_font(f_impact);
draw_set_color(c_white);
draw_text(m_gui_x+410, m_gui_y, "SAN");