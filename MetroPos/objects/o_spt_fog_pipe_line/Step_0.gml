//Adjusting Emitter positions. Streaming or Bursting Particles.
var xp, yp;
xp = x;
yp = y;
part_emitter_region(ps, global.pe_Mist_white, bbox_left, bbox_right, bbox_top, bbox_top, ps_shape_rectangle, ps_distr_linear);
part_emitter_stream(ps, global.pe_Mist_white, global.pt_Mist_white, -1);