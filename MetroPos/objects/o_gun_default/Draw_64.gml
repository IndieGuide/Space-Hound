/// @description Insert description here
// You can write your code in this editor
if global.debug_flag {
var dir = point_direction(x,y,mouse_x,mouse_y);
		
if (dir >= 90 && dir <= 270) {
	var gun_x = x + lengthdir_y(height_, dir);
	var gun_y = y - lengthdir_x(height_, dir);
}
else {
	var gun_x = x - lengthdir_y(height_, dir);
	var gun_y = y + lengthdir_x(height_, dir);
}
var x_offset=lengthdir_x(width_,dir);
var y_offset=lengthdir_y(width_,dir);
	
draw_point( (x - camera_get_view_x(view_camera[0]))*3,(y - camera_get_view_y(view_camera[0]))*3);
draw_point( (gun_x - camera_get_view_x(view_camera[0]))*3,(gun_y - camera_get_view_y(view_camera[0]))*3);
draw_point( (gun_x+x_offset - camera_get_view_x(view_camera[0]))*3,(gun_y+y_offset - camera_get_view_y(view_camera[0]))*3);

}