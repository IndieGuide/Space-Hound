//if (live_call()) return live_result;
//物理属性
//max_speed_=4;
//gravity_=.4;
//acceleration_=1;
//friction_=.3;
//jump_height_=-8;
//jump_width_=-35;
/// @description 玩家步事件
x_delta = x - x_previous;
x_previous = x;
y_delta = y - y_previous;
y_previous = y;


//check for death
if m_hp <= 0 {
	instance_destroy();
}
key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_shift = keyboard_check(vk_shift);
key_up_pressed = keyboard_check_pressed(vk_up);
key_down_pressed = keyboard_check_pressed(vk_down);
key_left_pressed = keyboard_check_pressed(vk_left);
key_right_pressed = keyboard_check_pressed(vk_right);
key_control_pressed = keyboard_check_pressed(vk_control);
key_space_pressed = keyboard_check_pressed(vk_space);
mouse_left_pressed = mouse_check_button_pressed(mb_left);

#region 冲刺判断
//if keyboard_check_pressed(vk_right) && alarm[7] == -1{
//	dash_flag = 1;
//	alarm[7] = 15;
//} else {
//	if keyboard_check_pressed(vk_right){
//		dash_flag = 1;
//		move_state = DASH;
//		x_scale_=image_xscale*.8;
//		y_scale_=image_yscale*1.4;
//		effect_create_below(ef_smoke, x, y, 0, c_red);
//		alarm[2]=10;
//	}
//}
//if keyboard_check_pressed(vk_left) && alarm[7] == -1{
//	dash_flag = -1;
//	alarm[7] = 15;
//} else {
//	if keyboard_check_pressed(vk_left){
//		dash_flag = -1;
//		move_state = DASH;
//		x_scale_=image_xscale*.8;
//		y_scale_=image_yscale*1.4;
//		effect_create_below(ef_smoke, x, y, 0, c_red);
//		alarm[2]=10;
//	}
//}

//if(alarm[2] == 9 || alarm[2] ==8 || alarm[2] ==6 || alarm[2] ==2) {
//	dash_image_index ++;
//}
#endregion
//state_ini();
//state_add(MOVE,state_move_in,state_move_out,state_move_step);
state_execute();

//左右行走判断，不动的时候速度为零
//var hinput = keyboard_check(vk_right)-keyboard_check(vk_left);

//if hinput != 0 {
//	move_state = MOVE;
//	sprite_index = SPlayerWalk;
//	m_speed[h] += hinput * acceleration_;
//	m_speed[h]= clamp(m_speed[h],-max_speed_,max_speed_);
//	var flipped=(mouse_x>x)*2-1;
//	image_speed=flipped*hinput*1.2;
//}else{
//	m_speed[h]=lerp(m_speed[h],0,friction_);
//	//image_speed=0;
//	if (abs(m_speed[h]) <= 1 && abs(m_speed[v]) <= 1) {
//		move_state = STAND;
//		sprite_index = SPlayerStand;
//		image_speed = 4;
//	}
//}

//if dash_image_index != 0 
//	move_state = DASH;
//if(move_state == DASH){
//		m_speed[h] = dash_flag*dash_dis;
//		if global.bullet_time_flag
//			m_speed[h] = dash_flag*dash_dis_bullet_time;
//}

//if (keyboard_check(vk_down)) && alarm[6] == -1{
//	move_state = SQUART;
//	m_speed[h] = 0;	//蹲下速度为0
//} else if (move_state == SQUART && !keyboard_check(vk_down) && alarm[6] == -1){
//	move_state = STAND;
//}

//if keyboard_check(vk_down) && (keyboard_check_pressed(vk_left) || keyboard_check_pressed(vk_right)) && alarm[6] == -1{
//	move_state = ROLL;
//	alarm[6] = 30;
//	image_speed = 10;
//}
//if (alarm[6] != -1) {
//	image_speed = 2;
//	//image_index = 30 - alarm[6];
//	m_speed[h] += hinput * acceleration_*3;
//	m_speed[h]= clamp(m_speed[h],-max_speed_*3,max_speed_*3);
//}

//if (alarm[0] != -1) {
//	move_state = SHOOT;
//}
//添加重力,以及跳跃事件
//if !place_meeting(x,y+1,o_solid){
//	//在空中

//	m_speed[v]+=scr_common_bullet_time_var(gravity_);
//	image_speed=0;
//	image_index=6;
//	if keyboard_check_pressed(vk_up) && jump_twice_flag {
//		m_speed[v]=jump_height_;
//		x_scale_=image_xscale*.8;
//		y_scale_=image_yscale*1.4;	
//		jump_twice_flag = false;
//		alarm[5] = 15;
//	}
	
//}else{
//	//在地上
//	alarm[5] = -1;
//	if keyboard_check_pressed(vk_up){
//		m_speed[v]=jump_height_;
//		x_scale_=image_xscale*.8;
//		y_scale_=image_yscale*1.4;		
//		jump_twice_flag = true;
//	}
//}

var hinput = key_right-key_left;

if state_x_move_flag && hinput != 0 {
	m_speed[h] += hinput * acceleration_;
	m_speed[h]= clamp(m_speed[h],-max_speed_,max_speed_);
	get_face = hinput;
}else{
	m_speed[h]=lerp(m_speed[h],0,friction_);
}
//重力代码&& !place_meeting(x,y+1,o_solid)
if state_y_move_flag && !collision_line(bbox_left, y+1, bbox_right, y+1, o_solid, 0, 1){
	m_speed[v]+=scr_common_bullet_time_var(gravity_);
	m_speed[v]= clamp(m_speed[v],jump_height_,-jump_height_);
}


//判断撞到墙体速度为零
scr_player_move_ext(m_speed,0,0,stop_by_solid_flag);
//解决卡墙
//if m_speed[h] == 0 {
//	if place_meeting(x + 1,y,o_solid) {
//		x -= 1;
//	} else if place_meeting(x - 1, y, o_solid) {
//		x += 1;}
//	//} else if place_meeting(x, y + 1, o_solid) {
//	//	y -= 1;
//	//} else if place_meeting(x, y - 1, o_solid) {
//	//	y += 1;
//	//}
//}
////Check for landing落地判断
//if place_meeting(x,y+1,o_solid) && !place_meeting(x,yprevious+1,o_solid){
//	x_scale_= image_xscale*1.4;
//	y_scale_= image_yscale*.8;
//}



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

