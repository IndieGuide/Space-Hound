if speed_[v] < 0
	image_index = clamp(image_index,0,5);
else
	image_index = clamp(image_index,6,10);
	
if place_meeting(x, y-1, o_solid_platform_halfsolid) {
	state_ins_bind = 3;
	return true;	
}
if place_meeting(x, y+1, o_solid)
	return true;

return false;