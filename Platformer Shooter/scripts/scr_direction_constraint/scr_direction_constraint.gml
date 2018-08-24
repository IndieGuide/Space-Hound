/// @description 传入一个角度，把值约束在-180到180之间
var dir = argument0;
if abs(dir) > 180 {
	if(dir > 0)
		dir -= 360;
	else
		dir += 360;
} 
return dir;