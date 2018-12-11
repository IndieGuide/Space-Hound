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

//翻滚距离
roll_dis = 90;
alarm[6] = 30;
//冲刺
dash_dis = 12;
dash_dis_bullet_time = 40;
dash_image_index = 0;
//人物属性
max_health_=50;//最大血量
health_=max_health_; //生命值 
invincible_=false;//无敌状态
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
default_gun = instance_create_layer(x-9, y-40, "Instances", o_gun_default); 
player_gun = default_gun;
bullet_cooldown_ = player_gun.cooldown;
alarm[0] = bullet_cooldown_;
//移动状态机，包括普通移动，左冲刺，右冲刺
state_ini();
state_add(enum_player_state.MOVE,scr_player_state_move_in,scr_player_state_move_step,scr_player_state_move_out);
state_add(enum_player_state.STAND,scr_player_state_stand_in,scr_player_state_stand_step,scr_player_state_stand_out);
state_add(enum_player_state.JUMP,scr_player_state_jump_in,scr_player_state_jump_step,scr_player_state_jump_out);
state_add(enum_player_state.JUMP_TWICE,scr_player_state_jump_twice_in,scr_player_state_jump_twice_step,scr_player_state_jump_twice_out);
state_add(enum_player_state.ROLL,scr_player_state_roll_in,scr_player_state_roll_step,scr_player_state_roll_out);
state_add(enum_player_state.SQUART,scr_player_state_squart_in,scr_player_state_squart_step,scr_player_state_squart_out);
state_add(5,scr_player_state_debug_in,scr_player_state_debug_step,scr_player_state_debug_out);
state_add(6,scr_player_state_debug_in,scr_player_state_debug_step,scr_player_state_debug_out);
state_add(7,scr_player_state_debug_in,scr_player_state_debug_step,scr_player_state_debug_out);
state_add(8,scr_player_state_debug_in,scr_player_state_debug_step,scr_player_state_debug_out);
state_add(9,scr_player_state_debug_in,scr_player_state_debug_step,scr_player_state_debug_out);
state_add(10,scr_player_state_debug_in,scr_player_state_debug_step,scr_player_state_debug_out);
state_add(12,scr_player_state_debug_in,scr_player_state_debug_step,scr_player_state_debug_out);
//move_state = STAND;
//是否绘制刀的flag
sword_flag = false;
//sword_bullet_flag = false;
change_gun_flag = false;
jump_twice_flag = false;
roll_flag = false;
dash_flag = 1;
shooted_flag = false;


//给其他obj引用player的方向（不安全，应改为由一个obj代理完成）
get_flipped = (mouse_x > x) * 2 - 1;
get_face = 1;
//键位映射
keyboard_set_map(ord("W"),vk_up);
keyboard_set_map(ord("A"),vk_left);
keyboard_set_map(ord("S"),vk_down);
keyboard_set_map(ord("D"),vk_right);

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
