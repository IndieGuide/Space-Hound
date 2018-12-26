/// @description Insert description here
// You can write your code in this editor
//Generated for GMS2 in Geon FX v1.0b
//Put this code in Create event

//Creating Particle System
ps = part_system_create();
part_system_depth(ps, -1);

//Creating Particle Types
//Effect1
global.pt_Effect1 = part_type_create();
part_type_shape(global.pt_Effect1, pt_shape_flare);
part_type_sprite(global.pt_Effect1, spr_pt_shape_flare, 0, 0, 0);
part_type_size(global.pt_Effect1, 0.20, 1, 0, 0);
part_type_scale(global.pt_Effect1, 1, 1);
part_type_orientation(global.pt_Effect1, 0, 0, 0, 0, 0);
part_type_color3(global.pt_Effect1, 16777215, 16777215, 16777215);
part_type_alpha3(global.pt_Effect1, 0, 0.13, 0);
part_type_blend(global.pt_Effect1, 1);
part_type_life(global.pt_Effect1, 120, 640);
part_type_speed(global.pt_Effect1, 0.01, 0.20, 0, 0);
part_type_direction(global.pt_Effect1, 0, 360, 0, 0);
part_type_gravity(global.pt_Effect1, 0, 0);

//Effect2
global.pt_Effect2 = part_type_create();
part_type_shape(global.pt_Effect2, pt_shape_cloud);
part_type_sprite(global.pt_Effect2, spr_pt_shape_cloud, 0, 0, 0);
part_type_size(global.pt_Effect2, 3, 5, 0, 0);
part_type_scale(global.pt_Effect2, 1, 1);
part_type_orientation(global.pt_Effect2, 0, 0, 0, 0, 0);
part_type_color3(global.pt_Effect2, 16777215, 16777215, 16777215);
part_type_alpha3(global.pt_Effect2, 0, 0.07, 0);
part_type_blend(global.pt_Effect2, 0);
part_type_life(global.pt_Effect2, 800, 1200);
part_type_speed(global.pt_Effect2, 0.10, 0.30, 0, 0);
part_type_direction(global.pt_Effect2, 0, 360, 0, 0);
part_type_gravity(global.pt_Effect2, 0, 0);

//Effect3
global.pt_Effect3 = part_type_create();
part_type_shape(global.pt_Effect3, pt_shape_pixel);
part_type_sprite(global.pt_Effect3, spr_pt_shape_pixel, 0, 0, 0);
part_type_size(global.pt_Effect3, 1, 1, 0, 0);
part_type_scale(global.pt_Effect3, 1, 1);
part_type_orientation(global.pt_Effect3, 0, 0, 0, 0, 0);
part_type_color3(global.pt_Effect3, 65535, 4235519, 255);
part_type_alpha3(global.pt_Effect3, 0, 0.60, 0);
part_type_blend(global.pt_Effect3, 0);
part_type_life(global.pt_Effect3, 80, 80);
part_type_speed(global.pt_Effect3, 0.20, 1, 0, 0);
part_type_direction(global.pt_Effect3, 0, 360, 0, 0);
part_type_gravity(global.pt_Effect3, 0, 0);

//Creating Emitters
global.pe_Effect1 = part_emitter_create(ps);
global.pe_Effect2 = part_emitter_create(ps);
global.pe_Effect3 = part_emitter_create(ps);

