speed = lerp(0, speed, 0.98);
draw_sprite_ext(s_part_shoot2,0,x,y,image_xscale,image_yscale,0,c_yellow,0.8);
if(alarm[0] == -1)
	instance_destroy();