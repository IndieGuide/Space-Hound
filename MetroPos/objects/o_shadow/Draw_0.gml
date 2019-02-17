/// @description 
if !instance_exists(m_bind_obj) exit;
with (m_bind_obj) {
	var spr_ind = sprite_index;
	var img_ind = image_index;
	var obj_x = x;
	var obj_y = y;
	var face = image_xscale;
}
x_[0] = obj_x;
y_[0] = obj_y;
for (var i = shadow_number; i>0; i--) {
x_[i] = x_[i - 1];
y_[i] = y_[i - 1];
}
for (var i = shadow_number; i > 0; i--) {
	if !sprite_exists(spr_ind) return;
	draw_sprite_ext(spr_ind, img_ind, x_[i], y_[i], face, 1, 0, m_color, 0.6-i*alpha_delta_add);
}
