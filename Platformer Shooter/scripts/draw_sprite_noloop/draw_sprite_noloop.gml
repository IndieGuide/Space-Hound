/// @param sprite_index
/// @param image_index
/// @param x
/// @param y
var sprite_index_ = argument0;
var image_index_ = argument1;
var x_ = argument2;
var y_ = argument3;
if image_index_ == image_number - 1 {
	image_index = floor(image_number - 2);
}
draw_sprite_ext(sprite_index_, image_index_, x_, y_, image_xscale, image_yscale, direction, image_blend, image_alpha);
