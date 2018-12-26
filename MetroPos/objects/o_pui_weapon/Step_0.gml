/// @description Insert description here
// You can write your code in this editor
if change_weapon_flag {
	m_bind_weapon = o_player.player_weapon;
	m_bind_weapon_icon = m_bind_weapon.m_weapon_icon;
	scr_ui_set_weapon_board_line(m_bind_weapon);
	m_bind_weapon_two = o_player.player_weapon_two;
	m_bind_weapon_two_icon = m_bind_weapon_two.m_weapon_icon;
	m_bind_weapon_two_board = scr_ui_get_weapon_board(m_bind_weapon_two);
}
if change_weapon_flag
	do_draw = [self,scr_o_pui_weapon_change_bind];
else
	do_draw = [self, scr_ui_draw_weapon]; 