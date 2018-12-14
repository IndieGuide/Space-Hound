if not instance_exists(target_) exit;

scr_listener_get("kill_feature_flag");
scr_listener_get("width_");
if kill_feature_flag && scr_listener_is_var_change("kill_feature_flag") {
	alarm[0] = kill_feature_time;
}
var move_x = target_.x;
var move_y = target_.y;
if kill_feature_flag {
	var move_x = feature_x;
	var move_y = feature_y;	
}
if scr_listener_is_var_change("width_") {
	is_camera_size_change = true;
} else {
	is_camera_size_change = false;
}


//子弹时间效果
if (global.bullet_time_flag && alarm[0] == -1){
	scr_camera_effect_zoom(camera_bullet_time_scale);
	default_camera_flag = false;
	global.camera_scale = camera_bullet_time_scale;
} else if (!global.bullet_time_flag){
	scr_camera_effect_zoom(normal_scale);
	default_camera_flag = true;
	global.camera_scale = normal_scale;
} else if ( alarm[0] != -1) {
	scr_camera_effect_zoom(kill_feature_scale);
	default_camera_flag = false;
	global.camera_scale = kill_feature_scale;
}

//像机紧随player位置
var hinput = keyboard_check(vk_right)-keyboard_check(vk_left);
if (hinput > 0) && (abs(camera_offset) < camera_offset_max) {
	camera_offset += 2;
} else if (hinput < 0) && (abs(camera_offset) < camera_offset_max){
	camera_offset -= 2;
} else if (hinput < 0) && (camera_offset == camera_offset_max) {
	camera_offset += hinput*20;
} else if (hinput > 0) && (-camera_offset == camera_offset_max) {
	camera_offset += hinput*20;
}
x = lerp(x,move_x + camera_offset,0.1);
y = lerp(y,move_y,0.1);

//子弹时间模式下player在镜头正中间
if (global.bullet_time_flag){
	y = lerp(y,move_y,0.1);
}
//使摄像机在房间内
x = clamp(x,width_/2,room_width-width_/2);
y = clamp(y,height_/2,room_height-height_/2);

camera_set_view_pos(view_camera[0], floor(x-width_/2) , floor(y-height_/2));

//射击窗口摇晃
if (o_player.shooted_flag == true) {
	if (global.bullet_time_flag) {
		x += random_range(-4,4);
		y += random_range(-4,4);
	}
	o_player.shooted_flag = false;
	x += random_range(-1,1);
	y += random_range(-1,1);
}


