/// @description 绘制自己和武器
if !instance_exists(o_player) exit;

var xscale_ = scr_get_enemy_xscale();
var dir_to_player = point_direction(x,y-sprite_height/2,o_player.x,o_player.y-o_player.sprite_height/2);
if instance_exists(default_gun) {
	if !(abs(scr_direction_constraint(default_gun.direction - dir_to_player)) < gun_rotate_speed){
		if (scr_direction_constraint(default_gun.direction - dir_to_player) > 0){
			default_gun.direction -= gun_rotate_speed;
		} else {
			default_gun.direction += gun_rotate_speed;
		}
	}
	var dir = default_gun.direction;
	
	//改变武器方向
	scr_listener_get("flipped");
	if scr_listener_is_var_change("flipped") {
	default_gun.direction =point_direction(0,0,flipped,0);
}
}



if (state_ == N1_SILENCE || state_ == N1_DIS_ATTACK) {
	//绘制自己
	
	draw_sprite_ext(sprite_index,image_index,x,y,xscale_,1,0,c_white,1);

	//绘制武器(此处可进一步抽象为一个函数，参数为x，y，武器的sprite。不过sprite还未确定，暂不处理)
	if !instance_exists(default_gun) exit;
	with (default_gun) {
		//Draw the gun
		x = other.x-4*other.flipped;
		y = other.y-other.sprite_height/2-8;
		draw_sprite_ext(sprite_index,0, x, y,1,other.flipped,dir,other.image_blend,other.image_alpha);
	}
} else if (state_ == N1_PATROL) {
	//绘制自己
	draw_sprite_ext(sprite_index,image_index,x,y,patrol_flag,1,0,c_white,1);
	if !instance_exists(default_gun) exit;
	with (default_gun) {
		//Draw the gun
		x = other.x-4*other.patrol_flag;
		y = other.y-other.sprite_height/2-8;
		draw_sprite_ext(sprite_index,0, x, y,other.patrol_flag,1,0,other.image_blend,other.image_alpha);
	}
	
} else if (state_ == N1_PLACE_ATTACK) {
	//绘制自己
	draw_sprite_ext(breath,image_index,x,y,xscale_,1,0,c_white,1);

	if !instance_exists(default_gun) exit;
	with (default_gun) {
		//Draw the gun
		x = other.x-4*other.flipped;
		y = other.y-other.sprite_height/2-8;
		
		draw_sprite_ext(sprite_index,0, x, y,1,other.flipped,dir,other.image_blend,other.image_alpha);
	}
} else if (state_ == N1_ADVANCE_ATTACK ) {
	//绘制自己
	draw_sprite_ext(sprite_index,image_index,x,y,-1,1,0,c_white,1);
	if !instance_exists(default_gun) exit;
	with (default_gun) {
		//Draw the gun
		x = other.x-4*(-1);
		y = other.y-other.sprite_height/2-8;
		draw_sprite_ext(sprite_index,0, x, y,-1,1,0,other.image_blend,other.image_alpha);
	}
} else if (state_ == N1_ADVANCE_PAUSE_ATTACK) {
	//绘制自己
	draw_sprite_ext(sprite_index,image_index,x,y,-1,1,0,c_white,1);
	if !instance_exists(default_gun) exit;
	with (default_gun) {
		//Draw the gun
		x = other.x-4*(-1);
		y = other.y-other.sprite_height/2-8;
		image_xscale = -1;
		draw_sprite_ext(sprite_index,image_index, x, y,image_xscale,1,0,other.image_blend,other.image_alpha);
	}
}