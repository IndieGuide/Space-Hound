/// @description Insert description here
// You can write your code in this editor
if surface_exists(surf) {
	surface_set_target(surf);
		draw_clear_alpha(c_white,0.5);
		part_system_update(ps);
		part_system_drawit(ps);




	surface_reset_target();
}
x_a ++;
draw_surface(surf, camera_get_view_x(view_camera[0])-1*x_a,camera_get_view_y(view_camera[0]));
   