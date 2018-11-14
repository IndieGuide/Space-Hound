//if (live_call()) return live_result;
/// @description 玩家步事件
//check for death
if health_ <= 0 {
	instance_destroy();
}

#region 冲刺判断
if keyboard_check_pressed(vk_right) && alarm[7] == -1{
	dash_flag = 1;
	alarm[7] = 15;
} else {
	if keyboard_check_pressed(vk_right){
		dash_flag = 1;
		move_state = DASH;
		x_scale_=image_xscale*.8;
		y_scale_=image_yscale*1.4;
		effect_create_below(ef_smoke, x, y, 0, c_red);
		alarm[2]=10;
	}
}
if keyboard_check_pressed(vk_left) && alarm[7] == -1{
	dash_flag = -1;
	alarm[7] = 15;
} else {
	if keyboard_check_pressed(vk_left){
		dash_flag = -1;
		move_state = DASH;
		x_scale_=image_xscale*.8;
		y_scale_=image_yscale*1.4;
		effect_create_below(ef_smoke, x, y, 0, c_red);
		alarm[2]=10;
	}
}

if(alarm[2] == 9 || alarm[2] ==8 || alarm[2] ==6 || alarm[2] ==2) {
	dash_image_index ++;
}
#endregion

//左右行走判断，不动的时候速度为零
var hinput = keyboard_check(vk_right)-keyboard_check(vk_left);

if hinput != 0 {
	speed_[h] += hinput * acceleration_;
	speed_[h]= clamp(speed_[h],-max_speed_,max_speed_);
	var flipped=(mouse_x>x)*2-1;
	image_speed=flipped*hinput*1.2;
}else{
	speed_[h]=lerp(speed_[h],0,friction_);
	image_speed=0;
	if (move_state == MOVE)
		image_index=0;
}
if(move_state == DASH){
		speed_[h] = dash_flag*dash_dis;
		if global.bullet_time_flag
			speed_[h] = dash_flag*dash_dis_bullet_time;
}

if (keyboard_check(vk_down)) && alarm[6] == -1{
	move_state = SQUART;
	speed_[h] = 0;	//蹲下速度为0
} else if (!keyboard_check(vk_down) && alarm[6] == -1){
	move_state = MOVE;
}

if keyboard_check(vk_down) && (keyboard_check_pressed(vk_left) || keyboard_check_pressed(vk_right)) && alarm[6] == -1{
	move_state = ROLL;
	alarm[6] = 30;
	image_speed = 10;
}
if (alarm[6] != -1) {
	image_speed = 2;
	//image_index = 30 - alarm[6];
	speed_[h] += hinput * acceleration_*3;
	speed_[h]= clamp(speed_[h],-max_speed_*3,max_speed_*3);
}

//添加重力,以及跳跃事件
if !place_meeting(x,y+1,o_solid){
	//在空中

	speed_[v]+=scr_common_bullet_time_var(gravity_);
	image_speed=0;
	image_index=6;
	if keyboard_check_pressed(vk_up) && jump_twice_flag {
		speed_[v]=jump_height_;
		x_scale_=image_xscale*.8;
		y_scale_=image_yscale*1.4;	
		jump_twice_flag = false;
		alarm[5] = 15;
	}
	
}else{
	//在地上
	alarm[5] = -1;
	if keyboard_check_pressed(vk_up){
		speed_[v]=jump_height_;
		x_scale_=image_xscale*.8;
		y_scale_=image_yscale*1.4;		
		jump_twice_flag = true;
	}
}

if dash_image_index != 0 
	move_state = DASH;




//判断撞到墙体速度为零
scr_player_move(speed_,0);

//Check for landing落地判断
if place_meeting(x,y+1,o_solid) && !place_meeting(x,yprevious+1,o_solid){
	x_scale_= image_xscale*1.4;
	y_scale_= image_yscale*.8;
}

// Move back to normal scale恢复 弹性形变 的 常态 
// x_scale_=lerp(x_scale_,image_xscale,.1);
// y_scale_=lerp(y_scale_,image_yscale,.1);

//if alarm[2]==20 && (move_state == L_DASH || move_state == R_DASH)
//    move_state = MOVE;

get_flipped=(mouse_x>x)*2-1;

#region 弃用代码
////出刀代码
//scr_useKnife(true,true);
#endregion

