if speed_[v] < 0
	image_index = clamp(image_index,0,5);
else
	image_index = clamp(image_index,6,10);
	
var platform_ = collision_point(x,bbox_top - 1,o_solid_platform_halfsolid,0,1);
if platform_ != noone && point_in_rectangle(x - player_width/2 , bbox_top - 1, platform_.bbox_left,platform_.bbox_top,platform_.bbox_right, platform_.bbox_bottom) && point_in_rectangle(x + player_width/2 ,bbox_top - 1, platform_.bbox_left,platform_.bbox_top,platform_.bbox_right, platform_.bbox_bottom) {
	state_ins_bind = 3;
	return true;	
}
if place_meeting(x,y+1,o_solid)
	return true;
	
return false;