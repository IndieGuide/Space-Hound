var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);
var vw = camera_get_view_width(view_camera[0]);
var vh = camera_get_view_height(view_camera[0]);


if(surface_exists(global.back_surf))
{
	draw_surface_ext(global.back_surf, vx, vy, 1, 1, 0, c_white, 1);
}
else
{
	global.back_surf = surface_create(vw,vh);
}



//Draw the surface
if(surface_exists(Surf_Light))
{
	draw_surface_ext(Surf_Light, vx, vy, 1, 1, 0, c_white, Blackness_Value);
}
else
{
	Surf_Light = surface_create(vw,vh);
}

