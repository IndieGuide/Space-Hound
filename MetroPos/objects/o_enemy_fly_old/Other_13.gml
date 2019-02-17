/// @description 智能控制
if !instance_exists(o_player) exit;		//玩家死亡则不执行代码

scr_airEnemy_use_accelerate();			//计算加速度

if scr_is_speed_max()					//如果达到最高速度
	scr_airEnemy_calcu_maxSpeed();		//最高速度下校准速度分量

if scr_is_player_into_attack_range()	//玩家进入攻击范围
	scr_enemy_fire_bullet_old();			//开火
	
scr_enemy_move(m_speed, 0.5);			//移动
