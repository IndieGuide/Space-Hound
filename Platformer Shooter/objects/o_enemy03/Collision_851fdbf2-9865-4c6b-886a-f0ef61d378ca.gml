/// @description  Take damage
if (alarm[2]<=29 && alarm[2]>=0) exit;
if invincible_==false{
	health_ -=1;
	
	audio_play_sound(a_hurt,5,false);
	invincible_=true;
	alarm[1]=game_get_speed(gamespeed_fps);//无敌时间1秒
	
}

