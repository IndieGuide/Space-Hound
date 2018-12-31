//Adjusting Emitter positions. Streaming or Bursting Particles.

with (o_player){
	var x_ = x;
	var y_ = y;
}
x = x_;
y = y_;
part_emitter_region(ps, global.pe_Effect1, x-500, x+500, y-300, y+300, ps_shape_rectangle, ps_distr_linear);
part_emitter_stream(ps, global.pe_Effect1, global.pt_Effect1, -8);
part_emitter_region(ps, global.pe_Effect2, x-1280, x+1280, y-720, y+720, ps_shape_rectangle, ps_distr_linear);
part_emitter_stream(ps, global.pe_Effect2, global.pt_Effect2, 2);
part_emitter_region(ps, global.pe_Effect3, x-500, x+500, y-300, y+300, ps_shape_rectangle, ps_distr_linear);
part_emitter_stream(ps, global.pe_Effect3, global.pt_Effect3, 2);

