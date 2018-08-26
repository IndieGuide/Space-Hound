/// @description 
depth = -1;
image_speed = 1.4;
if global.bullet_time_flag
	image_speed = 0.25;
image_angle = point_direction(x,y+10,mouse_x,mouse_y);
image_yscale = o_player.get_flipped;
x = o_player.x-4*image_yscale;
y = o_player.y-o_player.sprite_height/2-6;

flipped = o_player.get_flipped;

scr_listener_create();
scr_listener_add("flipped");