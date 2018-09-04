/// @description Lens flare by Esteban Devia
if live_call() return live_result;
draw_set_color(c_yellow)
draw_lensflare(x-200,y,225,5,5,2,1*cos(0.001*current_time)+5,1);

