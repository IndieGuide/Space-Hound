var_time_var+=0.04;

var_mouse_pos_x = (o_player.x - camera_get_view_x(view_camera[0]))*(window_get_width()/camera_get_view_width(view_camera[0]));
var_mouse_pos_y = (o_player.y-40 - camera_get_view_y(view_camera[0]))*(window_get_width()/camera_get_view_width(view_camera[0]));

if shader_enabled shader_set(shd_ripple_new);
    shader_set_uniform_f(uni_time, var_time_var);
    shader_set_uniform_f(uni_mouse_pos, var_mouse_pos_x, var_mouse_pos_y);
    shader_set_uniform_f(uni_resolution, var_resolution_x, var_resolution_y);
    shader_set_uniform_f(uni_wave_amount, var_wave_amount);
    shader_set_uniform_f(uni_wave_distortion, var_wave_distortion );
    shader_set_uniform_f(uni_wave_speed, var_wave_speed);
	shader_set_uniform_f(uni_circle_radius, var_circle_radius);
    if full_screen_effect draw_surface_ext(application_surface, 0, 0,1,1,0,c_white,1);
shader_reset();



