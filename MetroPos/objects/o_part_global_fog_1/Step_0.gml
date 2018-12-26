//Adjusting Emitter positions. Streaming or Bursting Particles.
var xp, yp;
xp = camera_get_view_x(view_camera[0]);
yp = camera_get_view_y(view_camera[0]);
part_emitter_region(ps, global.pe_Effect1, xp-1280, xp+1280, yp-640, yp+640, ps_shape_rectangle, ps_distr_linear);
part_emitter_stream(ps, global.pe_Effect1, global.pt_Effect1, -5);
part_emitter_region(ps, global.pe_Effect2, xp-1280, xp+1280, yp-640, yp+640, ps_shape_rectangle, ps_distr_linear);
part_emitter_stream(ps, global.pe_Effect2, global.pt_Effect2, -2);
part_emitter_region(ps, global.pe_Effect3, xp-1280, xp+1280, yp-640, yp+640, ps_shape_rectangle, ps_distr_linear);
part_emitter_stream(ps, global.pe_Effect3, global.pt_Effect3, -2);

