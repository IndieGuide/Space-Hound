/// @description 撞击伤害
if (alarm[2]<=29 && alarm[2]>=0) exit;
if !invincible_ {
	health_ -= 0.5;
	audio_play_sound(a_hurt,5,false);
	invincible_ = true;
	alarm[1]=20;//无敌时间1/3秒	
}

scr_collision_physics_effect(.4);