//Generated for GMS2 in Geon FX v1.0b
//Put this code in Create event

//Creating Particle System
ps = part_system_create();
part_system_depth(ps, 1);

//Creating Particle Types
//Effect1
global.pt_Effect1 = part_type_create();
part_type_shape(global.pt_Effect1, pt_shape_line);
part_type_sprite(global.pt_Effect1, spr_pt_shape_line, 0, 0, 0);
part_type_size(global.pt_Effect1, 0.50, 1.50, 0, 0);
part_type_scale(global.pt_Effect1, 0.60, 0.50);
part_type_orientation(global.pt_Effect1, 4, 35, 0, 0, 1);
part_type_color3(global.pt_Effect1, 65535, 4605695, 255);
part_type_alpha3(global.pt_Effect1, 0.80, 1, 0.20);
part_type_blend(global.pt_Effect1, 0);
part_type_life(global.pt_Effect1, 20, 180);
part_type_speed(global.pt_Effect1, 0.30, 0.30, 0, 0);
part_type_direction(global.pt_Effect1, 180, 216, 0, 0);
part_type_gravity(global.pt_Effect1, 0.30, 193);

//Effect2
global.pt_Effect2 = part_type_create();
part_type_shape(global.pt_Effect2, pt_shape_flare);
part_type_sprite(global.pt_Effect2, spr_pt_shape_flare, 0, 0, 0);
part_type_size(global.pt_Effect2, 0.20, 0.60, 0, 0);
part_type_scale(global.pt_Effect2, 1, 1);
part_type_orientation(global.pt_Effect2, 0, 0, 0, 0, 0);
part_type_color3(global.pt_Effect2, 65535, 4235519, 16777215);
part_type_alpha3(global.pt_Effect2, 1, 1, 1);
part_type_blend(global.pt_Effect2, 0);
part_type_life(global.pt_Effect2, 80, 400);
part_type_speed(global.pt_Effect2, 1, 2, 0, 0);
part_type_direction(global.pt_Effect2, 0, 360, 0, 0);
part_type_gravity(global.pt_Effect2, 0.02, 180);

//Creating Emitters
global.pe_Effect1 = part_emitter_create(ps);
global.pe_Effect2 = part_emitter_create(ps);



