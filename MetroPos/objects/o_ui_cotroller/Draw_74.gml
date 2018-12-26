/// @description draw ui on surface
if !surface_exists(global.ui_surf) {
	global.ui_surf = surface_create(1920,1080);
}
surface_set_target(global.ui_surf);
	draw_clear_alpha(c_white,0);
	//draw_sprite(SUiMapBoard, 0, 9, 822);
	//draw_sprite(SUiHpBar, 0, 762 ,958);
	ui_draw();
surface_reset_target();