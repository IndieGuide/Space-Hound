/// @description ui基础属性
event_inherited();
m_bind_weapon = o_player.player_weapon;
do_draw = [self, scr_ui_draw_weapon]; 
//do_change_bind_weapon = [self, scr_o_pui_weapon_change_bind];

