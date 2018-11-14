/// @description 绘制事件
if (state_ == SMART) {
	draw_sprite(sprite_index, 0,x,y);
}
if (state_ == 4) {
	draw_self();
}

if distance_to_object(o_player)<active_range {
	var color_ = make_color_rgb(random_range(0,255),random_range(0,255),random_range(0,255));
	draw_line_color(x,y,o_player.x,o_player.y-40,color_,color_);
}