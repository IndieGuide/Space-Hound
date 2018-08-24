/// @description  控制状态机及死亡检测
if distance_to_object(o_player)< attack_dis || find_target == true{
	speed_ = [xscale_ * hspeed_,0];	
	state_ = SMART;	
	find_target = true;
}
event_user(state_);

if !collision_rectangle(x-15,y-35,x+15,y+2,o_enemy_parent,0,1){
	hspeed_ = 1.6;
}

//Death  判断敌人死亡
if health_ <= 0{
	instance_destroy();
}


