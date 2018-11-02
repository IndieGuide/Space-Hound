/// @description Insert description here
// You can write your code in this editor
if !surface_exists(surf_) {
	surf_ = surface_create(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));
}

surface_set_target(surf_);
	shader_set(shd_notmal_light)
	draw_surface(surf_,0,0);
	shader_reset();
surface_reset_target();
