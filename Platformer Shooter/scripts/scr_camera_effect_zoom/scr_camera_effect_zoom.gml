/// @description scr_camera_effect_zoom
/// @param scale
var scale_ = argument0;

if (floor(width_)==(default_width/scale_)) exit;
width_ = lerp(width_,default_width/scale_,0.1);
height_ = lerp(height_,default_height/scale_,0.1);
camera_set_view_size(view_camera[0], width_, height_);