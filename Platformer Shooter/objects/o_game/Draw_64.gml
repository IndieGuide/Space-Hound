
if room != r_test exit;
if paused_{//绘制暂停画面
	var gui_width=display_get_gui_width();
	var gui_height=display_get_gui_height();
	draw_set_color(c_black);
	draw_rectangle(0,0,gui_width,gui_height,false);
	draw_set_color(c_yellow);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(gui_width/2,gui_height/2,"Paused");
}

//绘制分数和武器信息
if !instance_exists(o_player) exit;

draw_set_halign(fa_right);
draw_text(display_get_gui_width()-6,4,"Score:" + string(score));
if (o_player.player_gun.object_index != o_gun_default) 
	draw_text(display_get_gui_width()-6,20,"Bullet:" + string(o_player.player_gun.bullet_number));
draw_set_halign(fa_left);