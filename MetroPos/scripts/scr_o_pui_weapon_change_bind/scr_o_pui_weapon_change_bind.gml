//if live_call() return live_result;
if !m_ui_flag exit;
if !instance_exists(m_bind_weapon) exit;

if alpha_down_flag {
	m_alpha -= 0.05;
	if m_alpha == m_alpha_min {
		alpha_down_flag = false;
	}
} else {
	m_alpha += 0.05;
	if m_alpha == m_alpha_max {
		alpha_down_flag = true;
		m_alpha = 1;
		change_weapon_flag = false;
		m_gui_x_var1 = 463;
		m_gui_y_var1 = 915;
		m_gui_x_var2 = 413;
		m_gui_y_var2 = 935;
		m_gui_scale1 = 0.8;
		m_gui_scale2 = 1;
		scr_ui_draw_weapon();
		return 0;
	}
}
m_gui_x_var1 = lerp(m_gui_x_var1, m_gui_x_var1_target,0.2);
m_gui_y_var1 = lerp(m_gui_y_var1, m_gui_y_var1_target,0.2);
m_gui_x_var2 = lerp(m_gui_x_var2, m_gui_x_var2_target,0.2);
m_gui_y_var2 = lerp(m_gui_y_var2, m_gui_y_var2_target,0.2);

m_gui_scale1 = lerp(m_gui_scale1,1,0.2);
m_gui_scale2 = lerp(m_gui_scale2,0.8,0.2);
//主武器
draw_sprite_ext(m_bind_weapon_two_board, 0, m_gui_x_var2 , m_gui_y_var2, m_gui_scale2, m_gui_scale2, 0, c_white, m_alpha);
draw_sprite_ext(m_bind_weapon_two_icon, 0, m_gui_x_var2 + 46*m_gui_scale2 , m_gui_y_var2 + 46*m_gui_scale2, m_gui_scale2, m_gui_scale2, 0, c_white, m_alpha);
draw_sprite_ext(SUiHelpLeftMouse, 0, m_gui_x - 30, m_gui_y + 22, 1, 1, 0, c_white, 1);
//副武器
draw_sprite_ext(m_bind_weapon_board, 0, m_gui_x_var1, m_gui_y_var1, m_gui_scale1, m_gui_scale1, 0, c_white, m_alpha);
draw_sprite_ext(m_bind_weapon_icon, 0, m_gui_x_var1 + 46*m_gui_scale1 , m_gui_y_var1 + 46*m_gui_scale1, m_gui_scale1, m_gui_scale1, 0, c_white, m_alpha);
//主武器配置槽
draw_sprite_ext(m_bind_weapon_line, 0, 505, 976, 1, 1, 0, c_white, 0);
draw_sprite_ext(m_bind_weapon_board, 0, m_gui_x+185 ,m_gui_y+9, 0.8, 0.8, 0, c_white, m_alpha);
draw_sprite_ext(SUiHelpMiddleMouse, 0, m_gui_x+185 + 80, m_gui_y + 9 + 15, 1, 1, 0, c_white, 1);
draw_sprite_ext(SUiBulletCoolMask, 0, m_gui_x+185+3 ,m_gui_y + 9 + 3, 0.8, 0.8, 0, c_white, m_alpha);
//主武器名
draw_set_font(global.font_black);
draw_text_color(m_gui_x + 5, m_gui_y + 94, m_bind_weapon.m_weapon_name,c_white,c_white,c_white,c_white, m_alpha);
