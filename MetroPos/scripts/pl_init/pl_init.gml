/// @description  pl_init()

// Setup light object list
_pl_lightObjects = ds_list_create();

// Setup the global light surface
_pl_lightmap = surface_create(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));
_pl_vivid = true;

// Setup blurring
_pl_blurmap = surface_create(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));
_pl_blurring = true;

// Set options

pl_option_set_ambience(make_color_rgb(80, 80, 80), 0.8);
pl_option_set_blur(20, 0.25);

// Initialise gaussian blur shader
_pl_uni_resolution_hoz = shader_get_uniform(pl_shd_gaussian_horizontal, "resolution");
_pl_uni_resolution_vert = shader_get_uniform(pl_shd_gaussian_vertical, "resolution");
_pl_var_resolution_x =  camera_get_view_width(view_camera[0]) / _pl_blurringAmount;
_pl_var_resolution_y = camera_get_view_height(view_camera[0]) / _pl_blurringAmount;

