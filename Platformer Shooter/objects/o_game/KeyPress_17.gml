/// @description 
global.bullet_time_flag = scr_common_flag_change(global.bullet_time_flag);
if !global.bullet_time_flag {
	o_player.sword_bullet_flag = false;
}