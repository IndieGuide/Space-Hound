/// @description gets the game scale

if (instance_exists(obj_camera))
	return obj_camera.game_scale;
else {
	show_debug_message("Error from scr_camera_get_scale: obj_camera not found");
	return 1;
}
