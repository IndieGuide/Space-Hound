//敌人绘制事件
if !instance_exists(o_player) exit;

if self.x>o_player.x{ 
	xscale_=-1;
}

if self.x<=o_player.x{
	xscale_=1;
}


if state_ == SMART
	draw_sprite_ext(s_enemy2,image_index, x,y,xscale_,1,0,image_blend,image_alpha);
else if state_ == PATROL
	draw_sprite_ext(s_enemy2,image_index, x,y,dir,1,0,image_blend,image_alpha);