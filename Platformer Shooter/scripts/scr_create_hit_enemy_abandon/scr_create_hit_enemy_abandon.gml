/// @param x
/// @param y
/// @param hit_obj
/// @param enemy_ins
var x_ = argument0;
var y_ = argument1;
var hit_obj = argument2;
var enemy_ins = argument3;

instance_create_depth(x_, y_, -2, hit_obj);
ds_list_add(hit_ins_list, enemy_ins);