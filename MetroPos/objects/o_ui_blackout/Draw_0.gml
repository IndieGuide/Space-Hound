/// @description 

draw_sprite_ext(sprite_index, image_index, 0, 0, 1, 1, 0, c_white, alpha_);
alpha_ -= 0.005;
if alpha_ <= 0
	instance_destroy();