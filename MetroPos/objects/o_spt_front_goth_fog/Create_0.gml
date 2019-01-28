//Generated for GMS2 in Geon FX v1.0b
//Put this code in Create event

//Creating Particle System
ps = part_system_create();
part_system_depth(ps, -1);

//Creating Particle Types
//Effect1
global.pt_Effect1 = part_type_create();
part_type_sprite(global.pt_Effect1, SPartDisk, 1, 0, 0);
part_type_size(global.pt_Effect1, 0.10, 0.30, 0, 0);
part_type_scale(global.pt_Effect1, 1, 1);
part_type_orientation(global.pt_Effect1, 0, 0, 0, 0, 0);
part_type_color3(global.pt_Effect1, 16777215, 16777215, 16777215);
part_type_alpha3(global.pt_Effect1, 0, 0.11, 0);
part_type_blend(global.pt_Effect1, 0);
part_type_life(global.pt_Effect1, 400, 500);
part_type_speed(global.pt_Effect1, 0, 0.30, 0, 0);
part_type_direction(global.pt_Effect1, 0, 360, 0, 0);
part_type_gravity(global.pt_Effect1, 0, 0);

//Creating Emitters
global.pe_Effect1 = part_emitter_create(ps);

