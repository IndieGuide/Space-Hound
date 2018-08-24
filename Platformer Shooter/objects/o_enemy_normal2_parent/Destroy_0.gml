/// @description 死亡时删除相关的实例，掉落武器

instance_create_depth(x,y-30,-1,default_gun.gun_box);
event_inherited();
instance_destroy(default_gun);
