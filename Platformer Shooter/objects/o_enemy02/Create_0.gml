/// @description 初始化敌人
hspeed_ = 1.6;
speed_ = [hspeed_,0];
gravity_ = .5;
xscale_ = 1;
//设置敌人血量
health_ = 2;

//Bullet cooldown
bullet_cooldown_ = game_get_speed(gamespeed_fps);
alarm[0] = random( bullet_cooldown_);
alarm[1] = 120;

//States敌人状态
MOVEMENT_ = 0;
find_target = false;


state_ = SMART;
dir = 1;
attack_dis = 200;


