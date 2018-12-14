//Generated for GMS2 in Geon FX v1.0b
//Put this code in Create event


//Creating Particle System
ps = part_system_create();
part_system_depth(ps, -1);


//Creating Particle Types
//FireFly
global.pt_FireFly = part_type_create();
part_type_shape(global.pt_FireFly, pt_shape_pixel);
//spr_Firefly = sprite_add("Firefly.png", 1, 0, 0, 30, 30);
part_type_sprite(global.pt_FireFly, spr_Firefly, 1, 0, 0);
part_type_size(global.pt_FireFly, 0.01, 0.02, 0, 0);
part_type_scale(global.pt_FireFly, 1, 1);
part_type_orientation(global.pt_FireFly, 0, 344, 0, 0, 1);
part_type_color3(global.pt_FireFly, 16777215, 16777215, 16777215);
part_type_alpha3(global.pt_FireFly, 0.5, 1, 0);
part_type_blend(global.pt_FireFly, 1);
part_type_life(global.pt_FireFly, 40, 80);
part_type_speed(global.pt_FireFly, 0, 0.05, 0, 0);
part_type_direction(global.pt_FireFly, 0, 360, 0, 100);
part_type_gravity(global.pt_FireFly, 0.02, 90);

//Creating Emitters
global.pe_FireFly = part_emitter_create(ps);

