/// @description Player Movement
//check for death
if health_<=0{
	instance_destroy();
}

//左右行走判断，不动的时候速度为零
var hinput=keyboard_check(vk_right)-keyboard_check(vk_left);

if hinput !=0{
	speed_[h] += hinput*acceleration_;
	speed_[h]= clamp(speed_[h],-max_speed_,max_speed_);
	var flipped=(mouse_x>x)*2-1;
	image_speed=flipped*hinput*.6;
	
	move_state = MOVE;
}else{
	speed_[h]=lerp(speed_[h],0,friction_);
	image_speed=0;
	image_index=0;
}


//添加重力,以及跳跃事件
if !place_meeting(x,y+1,o_solid){
	speed_[v]+=gravity_;
	image_speed=0;
	image_index=6;
}else{
	if keyboard_check_pressed(vk_up){
		speed_[v]=jump_height_;
		x_scale_=image_xscale*.8;
		y_scale_=image_yscale*1.4;		
		
	}
}







//判断撞到墙体速度为零
//scr_enemy_move(speed_,0);

//Check for landing落地判断
if place_meeting(x,y+1,o_solid) && !place_meeting(x,yprevious+1,o_solid){
	x_scale_= image_xscale*1.4;
	y_scale_= image_yscale*.8;
}

// Move back to normal scale恢复 弹性形变 的 常态 
// x_scale_=lerp(x_scale_,image_xscale,.1);
// y_scale_=lerp(y_scale_,image_yscale,.1);

if alarm[2]==20
    move_state=MOVE;


//出刀代码
scr_useKnife(true,true);


