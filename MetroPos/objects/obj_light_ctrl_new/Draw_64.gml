/// @description draw ui
if !surface_exists(global.ui_surf) {
	global.ui_surf = surface_create(1920, 1080);
} else {
	draw_surface_ext(global.ui_surf, 0, 0, 1, 1, 0, c_white, 1);
}