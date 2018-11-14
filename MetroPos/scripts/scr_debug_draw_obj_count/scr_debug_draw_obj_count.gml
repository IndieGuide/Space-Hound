/// @description 统计一个obj存在的数量，并draw在debug-gui上
/// @param x
/// @param y
/// @param obj
/// @param descript_string

var x_ = argument0;
var y_ = argument1;
var obj_ = argument2;
var string_  = argument3;

if instance_exists(obj_) {
	var number = instance_number(obj_);
	draw_text(x_, y_, string_ + "总数量：    " + string(number));
}