///@param speed
///@param bounce弹性
var speed_=argument0;
var bounce_=argument1;

if place_meeting(x+speed_[h],y,o_solid){
	while !place_meeting(x+sign(speed_[h]),y,o_solid){
		x+=sign(speed_[h]);
	}
	
	if bounce_>0{
		speed_[@ h]=-speed_[@ h]*bounce_;
	}else{
		speed_[@ h]=0;
	}
}

x += scr_common_bullet_time_var(speed_[h]);

if place_meeting(x,y+speed_[v],o_solid){
	while !place_meeting(x,y+sign(speed_[v]),o_solid){
		y+=sign(speed_[v]);
	}
	
	if bounce_>0{
		speed_[@ v]=-speed_[@ v]*bounce_;
	}else{
		speed_[@ v]=0;
	}
}


y += scr_common_bullet_time_var(speed_[v]);

//var bbox_side;
//if (speed_[h] >0) bbox_side = bbox_right;
//else bbox_side = bbox_left;
//if(tilemap_get_at_pixel(collision_tilemap,bbox_side+speed_[h],bbox_top) != 0) || (tilemap_get_at_pixel(collision_tilemap,bbox_side+speed_[h],bbox_bottom) != 0)
//{
//	if (speed_[h] > 0) x = x - (x mod 16) + 15 - (bbox_right - x);
//	else x = x - (x mod 16) - (bbox_left - x);
//	speed_[h] = 0;
//}

//if (speed_[v] >0) bbox_side = bbox_bottom;
//else bbox_side = bbox_top;
//if(tilemap_get_at_pixel(collision_tilemap,bbox_left,bbox_side+speed_[v]) != 0) || (tilemap_get_at_pixel(collision_tilemap,bbox_right,bbox_side+speed_[v]) != 0)
//{
//	if (speed_[v] > 0) y = y - (y mod 16) + 15 - (bbox_bottom - y);
//	else y = y - (y mod 16) - (bbox_top - y);
//	speed_[v] = 0;
//}
