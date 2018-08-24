/// @description scr_syn_pos
/// 同步武器位置，如果是敌人的武器，位置同步由敌人obj进行（这很奇怪，不过暂时不解决）
if (player_flag == true) {
	x = o_player.x-9;
	y = o_player.y-40;
}