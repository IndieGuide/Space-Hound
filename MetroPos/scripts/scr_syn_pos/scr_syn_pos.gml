/// @description scr_syn_pos
if (instance_exists(o_player)) {
	var flipped = (mouse_x>o_player.x)*2-1;
	x = o_player.x - 10*flipped;
	y = o_player.y-40;
}