/// @description 状态机及死亡检测
if scr_is_player_into_attack_range()
	state_ = ATTACK;
else
	state_ = SILENCE;
	
event_user(state_);

#region 移动的物理逻辑
//左右行走判断，不动的时候速度为零
var hinput = scr_get_enemy_xscale();

if hinput != 0 {
	speed_[h] += hinput * acceleration_;
	speed_[h]= clamp(speed_[h],-max_speed_,max_speed_);
	//var flipped=(mouse_x>x)*2-1;
	image_speed=abs(hinput)*.6;
} else {
	speed_[h]=lerp(speed_[h],0,friction_);
	image_speed=0;
	image_index=0;
}


//添加重力,以及跳跃事件
if !place_meeting(x,y+1,o_solid){
	speed_[v] += gravity_;
	image_speed=0;
	image_index=6;
}else{
	if up_flag {
		speed_[v]=jump_height_;
		x_scale_ = image_xscale*.8;
		y_scale_ = image_yscale*1.4;		
	}
}

//判断撞到墙体速度为零
scr_enemy_move(speed_,0);

//Check for landing落地判断
if place_meeting(x,y+1,o_solid) && !place_meeting(x,yprevious+1,o_solid){
	x_scale_= image_xscale*1.4;
	y_scale_= image_yscale*.8;
}
#endregion
//Death  判断敌人死亡
if health_ <= 0
	instance_destroy();
