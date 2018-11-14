/// @description 
var gun_hit = instance_create_layer(x,y,"Instances",hit);
gun_hit.image_angle=image_angle;
audio_play_sound(hit_sound,3,false);