/// @description 
event_inherited();
//数据初始化
com_enemy_physic_ini();
com_enemy_value_basic_ini();
//视线
m_view_x_fix = 5;
m_view_y_fix = -40;
m_view = instance_create_layer(x+m_view_x_fix, y+m_view_y_fix, "Instances", o_enemy_view);
scr_enemy_view_setting(m_view, m_view_x_fix, m_view_y_fix);
//图像资源
m_sprite_idol					= s_kingdom_gun_soldier_crazy_stand;
m_sprite_walk					= s_kingdom_gun_soldier_crazy_walk;
m_sprite_attack					= s_kingdom_gun_soldier_crazy_attack_near;
m_sprite_attack_shoot			= s_kingdom_gun_soldier_crazy_attack_shoot;
m_sprite_attack_shoot_squart	= s_kingdom_gun_soldier_crazy_attack_shoot_squart;
m_sprite_injured				= s_kingdom_gun_soldier_crazy_stand;

m_gunpoint_fix_x = 48;
m_gunpoint_fix_y = -43;
//动作系统变量
m_act_queue = ds_queue_create();
m_act_last = noone;
m_act_next = noone;
m_act_now = noone;
m_act_mode = noone;
m_act_state = enum_enemy_normal_state.IDOL;
m_act_persistent_flag = false;
m_act_x[3] = noone;
m_act_y[3] = noone;
m_act_x[2] = noone;
m_act_y[2] = noone;
m_act_x[1] = noone;
m_act_y[1] = noone;
m_act_x[0] = noone;
m_act_y[0] = noone;
m_act_first_flag = true;
m_act_wait = false;
m_act_collision_target_flag = false;


//思考模式载入
act_ini(act_mode_calm_shoot);

//载入动作
//do_move = [self, act_lib_move_plat, 0, 200 , 10];
do_move_by_dir = [self, act_lib_move_dir, 0, 300, -1, 0];
do_stand = [self, act_lib_stand_time, 3];
do_attack_rush_catch = [self, act_lib_attack_rush_catch, 0];
do_attack_shoot = [self, act_lib_attack_shoot, m_gunpoint_fix_x, m_gunpoint_fix_y];
//do_attack_dash = [self, act_lib_attack_dash, 100];