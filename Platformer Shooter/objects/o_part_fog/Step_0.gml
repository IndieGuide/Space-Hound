//Adjusting Emitter positions. Streaming or Bursting Particles.
var xp, yp;
xp = x;
yp = y;
part_emitter_region(ps, global.pe_Mist_white, xp+0, xp+1280, yp+0, yp+720, ps_shape_rectangle, ps_distr_linear);
part_emitter_stream(ps, global.pe_Mist_white, global.pt_Mist_white, -3);