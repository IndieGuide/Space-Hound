/// @description 
depth = -3;


flipped = noone;//o_player.get_flipped

spr_attack1 = s_player_sword_attack1;
spr_attack2 = s_player_sword_attack2;
sprite_index = noone;

hit = o_player_sword_hit;
spark = o_player_sword_spark;

twice_attack_flag = false;
attack_flag = false;
//近战武器冷却时间
sword_cooldown = 30;

scr_listener_create();
scr_listener_add("flipped");
scr_listener_add("twice_attack_flag");
scr_listener_add("attack_flag");