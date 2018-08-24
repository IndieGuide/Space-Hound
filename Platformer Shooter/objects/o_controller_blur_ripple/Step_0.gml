//if keyboard_check(ord("Q")) var_wave_amount += 1;
//if keyboard_check(ord("A")) var_wave_amount -= 1;

//if keyboard_check(ord("W")) var_wave_distortion += 1;
//if keyboard_check(ord("S")) var_wave_distortion -= 1;

//if keyboard_check(ord("E")) var_wave_speed += 1;
//if keyboard_check(ord("D")) var_wave_speed -= 1;

if(global.bullet_time_flag) {
	shader_enabled = true;
	application_surface_draw_enable(false);
		
	if var_circle_radius > circle_radius_min {
		var_circle_radius -= circle_radius_delta;
	} else {
		global.bullet_time_flag = false;
		var_circle_radius = circle_radius_max;
	}
		
} else {
	shader_enabled = false;
	var_circle_radius = circle_radius_max;
		application_surface_draw_enable(true);
}
