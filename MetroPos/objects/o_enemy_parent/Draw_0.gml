/// @description Insert description here
// You can write your code in this editor
//debug代码
if global.debug_flag{
	draw_point(x,y);
	draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,1)
}
if global.debug_flag {
	draw_line(x, y, m_act_x[0], m_act_y[0]);
}

//血量
var m_hp_per = m_hp/m_hp_max;
draw_set_color(c_red);
draw_line_width(x - 20, y - 58, x -20 + 40 * m_hp_per, y - 58, 3);