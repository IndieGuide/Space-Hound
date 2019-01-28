//Generated for GMS2 in Geon FX v1.0b
//Put this code in Create event

//Creating Particle System
ps = part_system_create();
part_system_depth(ps, -1);

//Creating Particle Types
//Mist_white
global.pt_Mist_white = part_type_create();
part_type_shape(global.pt_Mist_white, pt_shape_pixel);
//spr_mist = sprite_add("mist.png", 1, 0, 0, 149, 125);
part_type_sprite(global.pt_Mist_white, spr_mist2, 1, 0, 0);
part_type_size(global.pt_Mist_white, 0.2, 0.3, 0, 0);
part_type_scale(global.pt_Mist_white, 1, 1);
part_type_orientation(global.pt_Mist_white, 0, 347, 0.30, 0, 0);
part_type_color3(global.pt_Mist_white, 16777215, 16318389, 12897217);
part_type_alpha3(global.pt_Mist_white, 0, 0.15, 0);
part_type_blend(global.pt_Mist_white, 0);
part_type_life(global.pt_Mist_white, 400, 460);
part_type_speed(global.pt_Mist_white, 0, 0.1, 0, 0);
part_type_direction(global.pt_Mist_white, 2, 169, 0, 0);
part_type_gravity(global.pt_Mist_white, 0, 0);

//Creating Emitters
global.pe_Mist_white = part_emitter_create(ps);



