/// @description Spawn enemies是否有敌人对象在场景中存在
if !instance_exists(o_enemy01){
	repeat(wave_){
		instance_create_layer(random_range(0,room_width),random_range(-64,-32),"Instances",o_enemy01);
	}
	wave_+=1;
}
