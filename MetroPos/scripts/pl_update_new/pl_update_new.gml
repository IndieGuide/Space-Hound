///// @description  pl_update()

//// Update lights
////for (var i = 0; i < ds_list_size(_pl_lightObjects); i++) {
////    with (ds_list_find_value(_pl_lightObjects , i)) {
////        pl_light_update();
////    }
////}

//// Prepare lightmap
//if (!surface_exists(_pl_lightmap)) {
//    _pl_lightmap = surface_create(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));
//}
//if (!surface_exists(_pl_blurmap)) {
//    _pl_blurmap = surface_create(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));
//}

//    for (var i = 0; i < ds_list_size(_pl_lightObjects); i++) {
//        with (ds_list_find_value(_pl_lightObjects , i)) {
           
//			surface_set_target(pl_one_surface);
//			    draw_clear(c_black);
//				draw_set_alpha(1);

//				draw_sprite(sprite_index, image_index, surface_get_width(pl_one_surface)/2, surface_get_height(pl_one_surface)/2);
//				    // Reset
//				draw_set_alpha(1);
//				draw_set_color(c_black);

//			surface_reset_target();
			
//		}
//    }
//surface_set_target(_pl_blurmap);
//  // Draw ambience
//    draw_clear(c_black);
//    draw_set_alpha(_pl_ambientBrightness);
//    draw_set_color(_pl_ambientColor);
//    draw_rectangle(0, 0, surface_get_width(_pl_lightmap), surface_get_height(_pl_lightmap), false);
//    // Draw lights
//    draw_set_alpha(1);
//    gpu_set_blendmode(bm_add);
//    for (var i = 0; i < ds_list_size(_pl_lightObjects); i++) {
//        with (ds_list_find_value(_pl_lightObjects , i)) {
//            //pl_light_draw();
//			shader_set(pl_shd_gaussian_horizontal);
//			shader_set_uniform_f(other._pl_uni_resolution_hoz, other._pl_var_resolution_x, other._pl_var_resolution_y);

//			draw_surface(pl_one_surface,floor(x -surface_get_width(pl_one_surface)/2 - camera_get_view_x(view_camera[0])), floor(y -surface_get_height(pl_one_surface)/2- camera_get_view_y(view_camera[0])));
//			shader_reset();
//		}
//    }


//surface_reset_target();

//// Prepare blurmap

    

	
	
    
//surface_set_target(_pl_lightmap);
    
//    draw_clear(c_black);
    
//    shader_set(pl_shd_gaussian_vertical);
//    shader_set_uniform_f(_pl_uni_resolution_vert, _pl_var_resolution_x, _pl_var_resolution_y);
//    draw_surface(_pl_blurmap, 0, 0);
//    shader_reset();

//// Reset
//surface_reset_target();
//draw_set_colour(c_white);
//gpu_set_blendmode(bm_normal);


