//动感模糊shader
draw_set_color(c_white);

uni_time = shader_get_uniform(shd_radial_blur,"time");
var_time_var = 0;

uni_mouse_pos = shader_get_uniform(shd_radial_blur,"mouse_pos");
var_mouse_pos_x = mouse_x - camera_get_view_x(0);
var_mouse_pos_y = mouse_y - camera_get_view_y(0);

uni_resolution = shader_get_uniform(shd_radial_blur,"resolution");
var_resolution_x = camera_get_view_width(0);
var_resolution_y = camera_get_view_height(0);

uni_radial_blur_offset = shader_get_uniform(shd_radial_blur,"radial_blur_offset");
var_radial_blur_offset = 0.00;

uni_radial_brightness = shader_get_uniform(shd_radial_blur,"radial_brightness");
var_radial_brightness = 1;

//(0.725,0.827,0.953,1)
uni_colour = shader_get_uniform(shd_radial_blur, "colour_");
uni_colour_r = 1;
uni_colour_g = 1;
uni_colour_b = 1;
uni_colour_a = 1;


shader_enabled = false;
full_screen_effect = true;

if (shader_enabled){
	application_surface_draw_enable(false);
}
