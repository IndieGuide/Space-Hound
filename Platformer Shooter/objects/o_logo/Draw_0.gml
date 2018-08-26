/// @description logo有一个渐显渐隐效果
if alarm[0] exit;
if add_flag {
	alpha += 0.005;
} else {
	alpha -= 0.005;
}
if alpha == 1 {
	add_flag = false;
}
if alpha < 0 {
	instance_create_depth(0,0,-2,o_ui_blackin);
}
draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, alpha);