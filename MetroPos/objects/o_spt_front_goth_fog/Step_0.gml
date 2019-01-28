//Adjusting Emitter positions. Streaming or Bursting Particles.
if ! instance_exists(o_player) exit;
with (o_player){
	var x_ = x;
	var y_ = y;
}
x = lerp(x,x_, 0.1);
y = lerp(y,y_, 0.1);
part_emitter_region(ps, global.pe_Effect1, x-1280, x+1280, y-1280, y+1280, ps_shape_ellipse, ps_distr_linear);
part_emitter_stream(ps, global.pe_Effect1, global.pt_Effect1, -6);

