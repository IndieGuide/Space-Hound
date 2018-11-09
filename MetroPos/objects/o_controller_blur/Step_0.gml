//if keyboard_check(ord("I")) var_radial_blur_offset += 0.01;
//if keyboard_check(ord("O")) var_radial_blur_offset -= 0.01;

if(global.bullet_time_flag) {
	shader_enabled = true;
	application_surface_draw_enable(false);
	if var_radial_blur_offset <= 0.06
		var_radial_blur_offset += 0.002;
	//(0.725,0.827,0.953,1)
	if uni_colour_r >= 0.985
		uni_colour_r -= 0.005
	if uni_colour_g >= 0.854
		uni_colour_g -= 0.005
	if uni_colour_b >= 0.854
		uni_colour_b -= 0.005

} else {
	shader_enabled = false;
	var_radial_blur_offset = 0;
	uni_colour_r = 1;
	uni_colour_g = 1;
	uni_colour_b = 1;
		application_surface_draw_enable(true);
}
