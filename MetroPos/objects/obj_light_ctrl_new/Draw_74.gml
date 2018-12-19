/// @description MAIN

// DRAW TO LIGHTING SURFACE:
//-----------------------------------------------------------------------------
if (!surface_exists(srf_lights)) {
	srf_lights = surface_create(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));
	tex_lights = surface_get_texture(srf_lights);
} else if (surface_exists(srf_lights) && o_camera.is_camera_size_change) {
	surface_free(srf_lights);
	srf_lights = surface_create(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));
	tex_lights = surface_get_texture(srf_lights);
	is_camera_default = false;
}

if global.light_flag {
surface_set_target(srf_lights);
	/*View:		- if there's many lights, add some code to check if the light would be drawn to the view
				- if the view size is different from the view port you maybe need to change the drawing scale
	Brightness:	- lights_strength controls the brightness of all lights
				- if you want to control the brightness of each individual light, there's two ways:
					- for static brightness, just make their colour darker in the room editor
					- for dynamic changes: change image_alpha */
					
	// set up surface and GPU
	draw_clear(c_black);
	gpu_set_blendmode(bm_add);
	gpu_set_tex_filter(true); // optional
	
	// draw light sprites
	var vx = camera_get_view_x(view_camera[0]);
	var vy = camera_get_view_y(view_camera[0]);
	with(o_freelight_parent) {
		
			var flick = (light_flick != 1) ? choose(1, 1, 1, 1, 1, 1, 1, 1,  1, 1, 1, 1, 1, 1, 1, 1, light_flick):1; //You can add or remove some "1".
		draw_sprite_ext(light_sprite_index, image_index, x - vx, y - vy, light_xscale*flick, light_yscale*flick, light_rotation, light_color_index, image_alpha * light_strength);
	}
	// reset GPU
	gpu_set_tex_filter(false); // optional
	gpu_set_blendmode(bm_normal);
surface_reset_target();
}
// DRAW APPLICATION SURFACE:
//-----------------------------------------------------------------------------
shader_set(shader);
	shader_set_uniform_f_array(u_col, color_mix);
	shader_set_uniform_f_array(u_con_sat_brt, con_sat_brt_mix);
	texture_set_stage(s_lights, tex_lights);
	if surface_exists(application_surface)
		draw_surface_ext(application_surface, 0, 0, 1, 1, 0, c_white, 1);
shader_reset();




//surface_set_target(s);
//solid_tiles = layer_get_id("SolidTiles");
//solid_tiles_tilemap = layer_tilemap_get_id(solid_tiles);
//draw_tilemap(solid_tiles_tilemap,0,-200);
//surface_reset_target();
//draw_surface(s,0,0);
// DEBUG LIGHTING SURFACE:
//-----------------------------------------------------------------------------

	//draw_surface_ext(srf_lights, 0, 0, scale, scale, 0, c_white, 1);





















