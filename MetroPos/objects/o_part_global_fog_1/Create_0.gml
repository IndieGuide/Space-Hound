/// @description Insert description here
// You can write your code in this editor
//Generated for GMS2 in Geon FX v1.0b
//Put this code in Create event
x = o_player.x;
y = o_player.y;
//Creating Particle System
ps = part_system_create();
part_system_depth(ps, 0);
part_system_automatic_draw(ps,false);
part_system_automatic_update(ps,false);
////Creating Particle Types
////Effect1
//global.pt_Effect1 = part_type_create();
//part_type_shape(global.pt_Effect1, pt_shape_flare);
//part_type_sprite(global.pt_Effect1, spr_pt_shape_flare, 0, 0, 0);
//part_type_size(global.pt_Effect1, 1, 2, 0, 0);
//part_type_scale(global.pt_Effect1, 1, 1);
//part_type_orientation(global.pt_Effect1, 0, 0, 0, 0, 0);
//part_type_color3(global.pt_Effect1, 16777215, 16777215, 16777215);
//part_type_alpha3(global.pt_Effect1, 0, 0.06, 0);
//part_type_blend(global.pt_Effect1, 1);
//part_type_life(global.pt_Effect1, 120, 640);
//part_type_speed(global.pt_Effect1, 0.01, 0.20, 0, 0);
//part_type_direction(global.pt_Effect1, 0, 360, 0, 0);
//part_type_gravity(global.pt_Effect1, 0, 0);

//Effect2
global.pt_Effect2 = part_type_create();
part_type_shape(	global.pt_Effect2, pt_shape_pixel);
part_type_sprite(	global.pt_Effect2, spr_mist2, 1, 0, 0);
part_type_size(		global.pt_Effect2, 1.00, 3.00, 0, 0);
part_type_scale(	global.pt_Effect2, 1, 1);
part_type_orientation(global.pt_Effect2, 0, 0, 0, 0, 0);
part_type_color3(	global.pt_Effect2, 16777215, 16777215, 16777215);
part_type_alpha3(	global.pt_Effect2, 0, 0.25, 0);
part_type_blend(	global.pt_Effect2, 0);
part_type_life(		global.pt_Effect2, 300, 500);
part_type_speed(	global.pt_Effect2, 0.10, 0.15, 0, 0);
part_type_direction(global.pt_Effect2, 0, 360, 0, 0);
part_type_gravity(	global.pt_Effect2, 0, 0);

////Effect3
//global.pt_Effect3 = part_type_create();
//part_type_shape(global.pt_Effect3, pt_shape_pixel);
//part_type_sprite(global.pt_Effect3, spr_pt_shape_pixel, 0, 0, 0);
//part_type_size(global.pt_Effect3, 0.1, 0.8, 0, 0);
//part_type_scale(global.pt_Effect3, 1, 1);
//part_type_orientation(global.pt_Effect3, 0, 0, 0, 0, 0);
//part_type_color3(global.pt_Effect3, 65535, 4235519, 255);
//part_type_alpha3(global.pt_Effect3, 0, 0.60, 0);
//part_type_blend(global.pt_Effect3, 0);
//part_type_life(global.pt_Effect3, 80, 80);
//part_type_speed(global.pt_Effect3, 0.20, 1, 0, 0);
//part_type_direction(global.pt_Effect3, 0, 360, 0, 0);
//part_type_gravity(global.pt_Effect3, 0, 0);

//Creating Emitters
//global.pe_Effect1 = part_emitter_create(ps);
global.pe_Effect2 = part_emitter_create(ps);
//global.pe_Effect3 = part_emitter_create(ps);


surf = surface_create(camera_get_view_width(view_camera[0])*3,camera_get_view_height(view_camera[0])*3);
x_a = 1;