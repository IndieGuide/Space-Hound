target_ = o_player;
width_ = camera_get_view_width(view_camera[0]);
height_=camera_get_view_height(view_camera[0]);



default_width = width_;
default_height = height_;

normal_scale = 1;
normal_scale = 1;
camera_bullet_time_scale = 1.5;
kill_feature_scale = 3;

default_camera_flag = true;

kill_feature_flag = false;
feature_x = -1;
feature_y = -1;
kill_feature_time = 50;

scr_listener_create();
scr_listener_add("kill_feature_flag");

scale = 2.4;

camera_offset = 0;
camera_offset_max = 80;