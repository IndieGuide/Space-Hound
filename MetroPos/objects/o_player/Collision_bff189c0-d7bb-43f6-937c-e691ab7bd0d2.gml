/// @description  受到敌人子弹攻击
if (alarm[2]<=29 && alarm[2]>=0) exit;
if !invincible_ {
	health_ -= other.damage;	
	audio_play_sound(other.hit_sound,5,false);
	invincible_ = true;
	alarm[1]= 10;//无敌时间1/6秒
}
if(other != o_gun_sg_bullet_enemy)
	instance_destroy(other);

