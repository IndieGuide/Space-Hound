/// @description 初始化敌人
speed_=[0,0];
acceleration_=0.05;
max_speed_=2;

//设置敌人血量
health_=2;

//子弹冷却
bullet_cooldown_=game_get_speed(gamespeed_fps);
alarm[0] = random( bullet_cooldown_);

//攻击范围
attack_range = 600;

//初始状态
state_ = SMART;

//受创x,y
hurt_x_add = 0;
hurt_y_add = 0;

