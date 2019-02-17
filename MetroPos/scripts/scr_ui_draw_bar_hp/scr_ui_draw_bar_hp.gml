//if live_call() return live_result;
if !m_ui_flag exit;

draw_sprite(SUiHpBar, 0, m_gui_x , m_gui_y);
with(o_player){
	var hp_ = m_hp;
	var hp_max_ = m_max_hp;
}
var hp_xscale = hp_/hp_max_;
draw_sprite_ext(SUiHpBarFill, 0, m_gui_x + 4, m_gui_y + 4, hp_xscale, 1, 0, c_white, 1);
draw_set_font(f_impact);
draw_set_color(c_white);
draw_text(m_gui_x+410, m_gui_y, "HP");
draw_set_font(global.font_black);
//draw_text(m_gui_x+450, m_gui_y, name);