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

