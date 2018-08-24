/// @description 

//添加重力
if !place_meeting(x,y+1,o_solid){
	speed_[v] += gravity_;
	image_speed=0;
	image_index=6;
}

//判断撞到墙体速度为零
scr_enemy_move(speed_,0);
