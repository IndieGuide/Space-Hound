//if live_call() return live_result;
//draw_self();
//draw_set_color(c_yellow)
//draw_lensflare(x,y,4,0.05,0.05,2,1,1);
draw_sprite_ext(s_part_shoot2,0,x,y,image_xscale,image_yscale,0,c_yellow,1);
if(alarm[0] == -1)
	instance_destroy();
	