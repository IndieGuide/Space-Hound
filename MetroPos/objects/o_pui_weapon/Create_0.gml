/// @description ui基础属性
event_inherited();
m_bind_weapon = o_player.player_weapon;
m_bind_weapon_icon = m_bind_weapon.m_weapon_icon;
m_bind_weapon_board = noone;
m_bind_weapon_line = noone;
scr_ui_set_weapon_board_line(m_bind_weapon);
m_bind_weapon_two = o_player.player_weapon_two;
m_bind_weapon_two_icon = m_bind_weapon_two.m_weapon_icon;
m_bind_weapon_two_board = scr_ui_get_weapon_board(m_bind_weapon_two);

do_draw = [self, scr_ui_draw_weapon]; 

change_weapon_flag = false;
m_alpha = 1;
m_alpha_min = 0;
m_alpha_max = 1;
alpha_down_flag = true;

//413,935
m_gui_x_var1 = 463;
m_gui_y_var1 = 915;
m_gui_x_var1_target = 413;
m_gui_y_var1_target = 935;

m_gui_x_var2 = 413;
m_gui_y_var2 = 935;
m_gui_x_var2_target = 463;
m_gui_y_var2_target = 915;

m_gui_scale1 = 0.8;
m_gui_scale2 = 1;

