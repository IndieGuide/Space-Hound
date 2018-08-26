var xp, yp;
xp = x;
yp = y;
part_emitter_region(ps, global.pe_Effect1, xp-2, xp+308, yp-185, yp+775, ps_shape_rectangle, ps_distr_linear);
part_emitter_stream(ps, global.pe_Effect1, global.pt_Effect1, 2);
part_emitter_region(ps, global.pe_Effect2, xp+0, xp+200, yp+1, yp+721, ps_shape_rectangle, ps_distr_linear);
part_emitter_stream(ps, global.pe_Effect2, global.pt_Effect2, 1);

