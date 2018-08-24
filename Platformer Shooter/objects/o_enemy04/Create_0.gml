/// @description 初始化敌人

//设置敌人血量
health_ = 2;

//子弹冷却
bullet_cooldown_=game_get_speed(gamespeed_fps);
alarm[0] = random( bullet_cooldown_);

//攻击范围
attack_range = 400;

//初始状态
state_ = SILENCE;