/// @description 子弹时间变量
/// @param variable
/// @param scale

var variable = argument0;
var scale_ = argument1;
if global.bullet_time_flag
	variable = variable* scale_;
else
	variable = variable;
return variable;