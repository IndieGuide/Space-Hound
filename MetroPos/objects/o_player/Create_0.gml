/// @description 玩家基本属性
depth = -2;
//物理属性
speed_=[0,0];
max_speed_=4;
gravity_=.5;
acceleration_=1;
friction_=.3;
jump_height_=-8;
jump_width_=-35;
//人物从上到下的长度，用来爬梯子时判断有没有到顶层
player_height = 56;
//实际上是碰撞盒的宽度
player_width = 16;

stop_by_solid_flag = true;
//翻滚距离
roll_dis = 90;
//翻滚时长
roll_time = 25;
//翻滚间隔
roll_cant_time = 20;
//冲刺
dash_dis = 12;
dash_dis_bullet_time = 40;
dash_image_index = 0;
//无敌状态
invincible_ = false;

//人物属性
max_health_ = 50;//最大血量
health_ = max_health_; //生命值 
max_san_ = 100;
san_ = 80;




#region gun_script_old
////枪械列表
//gun_slot = ds_list_create();
////创建默认枪
//default_gun = instance_create_layer(x-9, y-40, "Instances", o_gun_default); 
////创建默认武器
//default_close_weapon = instance_create_layer(x - 9, y - 40, "Instances", o_player_sword);
//default_close_weapon.player_flag = true;
////添加初始枪到列表里
//ds_list_add(gun_slot, default_gun);
////设置默认枪为装备的武器
//player_gun = gun_slot[| 0];

////子弹冷却速度（随装备改变）
//bullet_cooldown_ = player_gun.cooldown;
//alarm[0] = bullet_cooldown_;
#endregion

//道具
player_weapon = noone;
player_weapon_second = noone;
player_item = noone;
player_drug = noone;

weapon_slot = ds_list_create();

default_gun = instance_create_layer(x-9, y-40, "Instances", o_gun_default); 
ds_list_add(weapon_slot, default_gun);
small_knife =  instance_create_layer(x-9, y-40, "Instances", o_close_weapon_smallknife); 
ds_list_add(weapon_slot, small_knife);
default_gun.m_weapon_player_flag = true;
player_weapon = weapon_slot[| 0];
player_weapon_two = weapon_slot[| 1];
player_weapon_cooldown = player_weapon.m_weapon_cooldown;
alarm[0] = player_weapon_cooldown;

//状态机
state_ini();
state_add(enum_player_state.MOVE,scr_player_state_move_in,scr_player_state_move_step,scr_player_state_move_out);
state_add(enum_player_state.STAND,scr_player_state_stand_in,scr_player_state_stand_step,scr_player_state_stand_out);
state_add(enum_player_state.JUMP,scr_player_state_jump_in,scr_player_state_jump_step,scr_player_state_jump_out);
state_add(enum_player_state.JUMP_TWICE,scr_player_state_jump_twice_in,scr_player_state_jump_twice_step,scr_player_state_jump_twice_out);
state_add(enum_player_state.ROLL,scr_player_state_roll_in,scr_player_state_roll_step,scr_player_state_roll_out);
state_add(enum_player_state.SQUART,scr_player_state_squart_in,scr_player_state_squart_step,scr_player_state_squart_out);
state_add(enum_player_state.DASH,scr_player_state_debug_in,scr_player_state_debug_step,scr_player_state_debug_out);
state_add(enum_player_state.SHOOT,scr_player_state_shoot_in,scr_player_state_shoot_step,scr_player_state_shoot_out);
state_add(enum_player_state.CLIMB,scr_player_state_climb_in,scr_player_state_climb_step,scr_player_state_climb_out);
state_add(enum_player_state.CLIMBED,scr_player_state_climbed_in,scr_player_state_climbed_step,scr_player_state_climbed_out);
state_add(enum_player_state.FALL,scr_player_state_fall_in,scr_player_state_fall_step,scr_player_state_fall_out);
state_add(enum_player_state.SHOOT_AIM,scr_player_state_shoot_aim_in,scr_player_state_shoot_aim_step,scr_player_state_shoot_aim_out);
state_add(enum_player_state.ANIME,scr_player_state_debug_in,scr_player_state_debug_step,scr_player_state_debug_out);




//如果不使用统一的掩码，很容易出现各种卡进墙体
mask_index = SPlayerStand;
//move_state = STAND;
//是否绘制刀的flag
//sword_flag = false;
//sword_bullet_flag = false;
change_gun_flag = false;
//roll_flag = false;
dash_flag = 1;
shooted_flag = false;//被o_camera引用，使射击后窗口抖动，可以用call来改进


//给其他obj引用player的方向（不安全，应改为由一个obj代理完成）
get_flipped = (mouse_x > x) * 2 - 1;
get_face = 1;

//动画坐标，也被climbed状态引用来贴紧平台
anime_x = 0;
anime_y = 0;

player_light = instance_create_layer(x,y,"LightLayer", o_freelight_player);
//键位映射
keyboard_set_map(ord("W"),vk_up);
keyboard_set_map(ord("A"),vk_left);
keyboard_set_map(ord("S"),vk_down);
keyboard_set_map(ord("D"),vk_right);

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

lens_eyes_amount = 0;

#region 弃用
//Scale Variables 弹性形变
//x_scale_=image_xscale;
//y_scale_=image_yscale;
////小刀subimg
//draw_xiaodao1 = false;
//draw_xiaodao2 = false;
//draw_xiaodao2_start = false;
//img_xiaodao = 0;
//knifeing1 = true;
//knifeing2 = true;
#endregion
//collision_tilemap = layer_tilemap_get_id("SolidTiles");
