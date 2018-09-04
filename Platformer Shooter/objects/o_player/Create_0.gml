/// @description 玩家基本属性
depth = -2;
//物理属性
speed_=[0,0];
max_speed_=4;
gravity_=.5;
acceleration_=1;
friction_=.3;
jump_height_=-10;
jump_width_=-30;

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

//枪械列表
gun_slot = ds_list_create();
//创建默认枪
default_gun = instance_create_layer(x-9, y-40, "Instances", o_gun_default); 
//创建默认武器
default_close_weapon = instance_create_layer(x - 9, y - 40, "Instances", o_player_sword);
default_close_weapon.player_flag = true;
//添加初始枪到列表里
ds_list_add(gun_slot, default_gun);
//设置默认枪为装备的武器
player_gun = gun_slot[| 0];

//子弹冷却速度（随装备改变）
bullet_cooldown_ = player_gun.cooldown;
alarm[0] = bullet_cooldown_;

//移动状态机，包括普通移动，左冲刺，右冲刺
move_state = MOVE;
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