//判断o_player是否存在
draw_sprite(sprite_index,image_index,x,y);//绘制血条
if !instance_exists(o_player) exit;

draw_health_=lerp(draw_health_,o_player.health_,.5);

draw_set_color(c_red);//绘制红色
draw_rectangle(x+14,y+8,x+98*draw_health_/o_player.max_health_,y+14,false);//血条内绘制矩形坐标
draw_set_color(c_white);//用完之后设置成白色
