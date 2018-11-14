/// @description 子弹时间变量
var variable = argument0;
if global.bullet_time_flag
	variable = variable*global.time_scale;
else
	variable = variable;
return variable;