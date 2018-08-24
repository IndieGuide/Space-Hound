/// @description logo有一个渐显渐隐效果
if add_flag {
	alpha += 0.005;
} else {
	alpha -= 0.005;
}
if alpha == 1 {
	add_flag = false;
}
if alpha == -0.005 {
	room_goto_next();
	instance_destroy();
}
draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, alpha);