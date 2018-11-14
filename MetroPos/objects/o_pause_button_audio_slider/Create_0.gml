/// @description 滑动控制器

bind_obj = instance_find(o_audiosource,0); 
create_obj = noone;
line_length = 155;
default_x = x;
default_y = y;
depth = -1;
left_down_flag = false;

x = bind_obj.bgvolumn*100/(100/line_length) + default_x;