/// @description 初始化敌人
m_speed=[0,0];
acceleration_=0.05;
max_speed_=2;

//设置敌人血量
health_ = 3;

//子弹冷却
bullet_cooldown_ = 60;
alarm[0] = random( bullet_cooldown_);

//激活范围
active_range = 250;
//攻击范围
attack_range = 10;

//初始状态
state_ = SMART;

damage = 6;

attack_flag = true;
destroy_time = 0;

//受创x,y
hurt_x_add = 0;
hurt_y_add = 0;

