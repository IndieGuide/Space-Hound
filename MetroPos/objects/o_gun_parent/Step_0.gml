
if !instance_exists(o_player) exit;

//武器的位置与人物位置同步
scr_syn_pos();

//判断子弹是否射完
scr_bullet_end();