if live_call() return live_result;
draw_self();
draw_set_color(c_yellow)
draw_lensflare(x,y,4,0.05,0.05,2,1,1);
if(alarm[0] == -1)
	instance_destroy();