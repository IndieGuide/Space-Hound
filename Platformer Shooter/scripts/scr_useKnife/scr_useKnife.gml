///@description scr_useKnife(isKillEnemy,isKillBullet)
///@param isKillEnemy
///@param isKillBullet
if img_xiaodao != 0 {
	var isKillEnemy = argument0;
	var isKillBullet = argument1;
	var bullet_ = collision_rectangle(x+8, y-30, x+24, y, o_enemy_bullet,1,1);
	var enemy_ = collision_rectangle(x+8, y-30, x+24, y, o_enemy01,1,1);
	if isKillEnemy {
		if instance_exists(enemy_) && draw_xiaodao1 && knifeing1 {
			enemy_.health_ -= 1;
			knifeing1 = false;
		}
		if instance_exists(enemy_) && draw_xiaodao2 && knifeing2 {
			enemy_.health_ -= 1;
			knifeing2 = false;
		}
	}
	if isKillBullet {
		if instance_exists(bullet_)
			instance_destroy(bullet_);
	}
}