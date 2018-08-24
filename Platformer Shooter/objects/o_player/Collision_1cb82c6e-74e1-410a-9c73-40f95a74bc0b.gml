/// @description  受到伤害（弃用）
if (alarm[2]<=29 && alarm[2]>=0) exit;
if invincible_==false{
	health_ -= 0.5;	
	audio_play_sound(a_hurt,5,false);
	invincible_=true;
	alarm[1]= 10;//无敌时间1/6秒
	
}

instance_destroy(other);

