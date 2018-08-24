/// @description 绘制自己和武器
if !instance_exists(o_player) exit;

//绘制自己
var xscale_ = scr_get_enemy_xscale();
draw_sprite_ext(sprite_index,image_index,x,y,xscale_,1,0,c_white,1);

//绘制武器(此处可进一步抽象为一个函数，参数为x，y，武器的sprite。不过sprite还未确定，暂不处理)
var dir = point_direction(x,y-sprite_height/2,o_player.x,o_player.y);
var flipped=(o_player.x>x)*2-1;
draw_sprite_ext(s_enemy3_gun,0, x-3, y-17, 1, flipped, dir, c_white, 1);