///// @description 
x = o_player.x-4*image_yscale;
y = o_player.y-o_player.sprite_height/2-6;
flipped = o_player.get_flipped;
scr_listener_get("flipped");
if (global.bullet_time_flag && scr_listener_is_var_change("flipped")) {
	instance_destroy();
	if instance_exists(o_player)
		o_player.sword_flag = false;
}