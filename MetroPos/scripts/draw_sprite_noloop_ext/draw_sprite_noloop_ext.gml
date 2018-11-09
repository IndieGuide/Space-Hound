/// @param sprite_index
/// @param image_index
/// @param x
/// @param y
/// @param xscale
/// @param yscale
/// @param direction
/// @param col
/// @param alpha
var sprite_index_ = argument0;
var image_index_ = argument1;
var x_ = argument2;
var y_ = argument3;
var xscale_ = argument4;
var yscale_ = argument5;
var dir_ = argument6;
var col_ = argument7;
var alpha_ = argument8;
if image_index_ >= image_number - 1 {
	image_index = floor(image_number - 2);
}
draw_sprite_ext(sprite_index_, image_index_, x_, y_, xscale_, yscale_, dir_, col_, alpha_);
