//水波shader,围绕玩家的一个圆圈内正常显示
draw_set_color(c_white);

uni_time = shader_get_uniform(shd_ripple_new,"time");
var_time_var = 0;

uni_mouse_pos = shader_get_uniform(shd_ripple_new,"mouse_pos");
var_mouse_pos_x = window_mouse_get_x();
var_mouse_pos_y = window_mouse_get_y();

uni_resolution = shader_get_uniform(shd_ripple_new,"resolution");
var_resolution_x = camera_get_view_width(0);
var_resolution_y = camera_get_view_height(0);

uni_wave_amount = shader_get_uniform(shd_ripple_new,"wave_amount");
var_wave_amount = 60; //higher = more waves

uni_wave_distortion = shader_get_uniform(shd_ripple_new,"wave_distortion");
var_wave_distortion = 20; //higher = less distortion

uni_wave_speed = shader_get_uniform(shd_ripple_new,"wave_speed");
var_wave_speed = 3.0; //higher = faster

uni_circle_radius = shader_get_uniform(shd_ripple_new,"circleRadius");
var_circle_radius = 0.2; //higher = more waves
circle_radius_min = 0.2;
circle_radius_max = 0.7;
bullet_time_time = 300;
circle_radius_delta = (circle_radius_max-circle_radius_min)/bullet_time_time;
//shader_get_sampler_index()
//surface_get_texture()
shader_enabled = false;
full_screen_effect = true;


if (shader_enabled){
	application_surface_draw_enable(false);
}