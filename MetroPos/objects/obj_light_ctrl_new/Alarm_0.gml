/// @description Insert description here
alarm[0] = room_speed/2;
instance_deactivate_object(o_freelight_parent);
instance_deactivate_object(o_scene_part_parent);

var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);
var cam_w = camera_get_view_width(view_camera[0]);
var cam_h = camera_get_view_height(view_camera[0]);

instance_activate_region(cam_x - active_area_expend_value,
						 cam_y - active_area_expend_value,
						 cam_w + active_area_expend_value*2,
						 cam_h + active_area_expend_value*2,
						 true);

//instance_activate_object(obj_light_ctrl_new);
//instance_activate_object(o_camera);
//instance_activate_object(o_game);
//instance_activate_object(o_debug);