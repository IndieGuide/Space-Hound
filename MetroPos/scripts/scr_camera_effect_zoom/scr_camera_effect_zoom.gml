/// @description scr_camera_effect_zoom
/// @param scale
var scale_ = argument0;
var var_default_width = default_width/scale_;
var var_width = width_;
if (var_default_width == var_width) exit;
width_ = lerp(width_,default_width/scale_,0.1);
height_ = lerp(height_,default_height/scale_,0.1);
camera_set_view_size(view_camera[0], width_, height_);