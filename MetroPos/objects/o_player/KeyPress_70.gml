/// @description 换武器
if change_gun_flag exit;
scr_playergun_change(scr_next_gun());
if instance_exists (o_pui_weapon) {
	o_pui_weapon.change_weapon_flag = true;
}