/// @description 
var x_ = x;
var y_ = y;
var face_ = m_face;
with (m_view) {
	m_face = face_;
	x = x_ + m_x_fix*face_;
	y = y_ + m_y_fix;
}

act_execute();
image_xscale = m_face;
scr_enemy_physic_execute();