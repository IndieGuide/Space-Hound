/// @description 
depth = -3;
flipped = noone;//o_player.get_flipped
sprite_index = noone;
twice_attack_flag = false;
attack_flag = false;
//近战武器冷却时间
sword_cooldown = 30;
normal_img_spd = 1.4;
bullet_img_spd = 0.5;


player_flag = false;
attacked_list = ds_list_create();

spr_attack1 = noone;
spr_attack2 = noone;
dmg_attack1 = 0;
dmg_attack2 = 0;
hit_dis = 0;
hit = noone;
spark = noone;


scr_listener_create();
scr_listener_add("flipped");
scr_listener_add("twice_attack_flag");
scr_listener_add("attack_flag");