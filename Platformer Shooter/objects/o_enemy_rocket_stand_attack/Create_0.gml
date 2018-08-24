/// @description 
event_inherited();
//创建敌人武器
instance_destroy(default_gun);
default_gun = instance_create_layer(x-9, y-40, "Instances", o_gun_rocket); 
//子弹冷却
bullet_cooldown_= default_gun.cooldown;
alarm[0] = bullet_cooldown_;
//弹夹剩余弹药
gun_clip = default_gun.bullet_clip;