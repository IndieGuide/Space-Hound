/// @description 敌人攻击判定
var effect = (sprite_index == spr_attack1) ? hit : spark;
if (ds_list_empty(attacked_list)) {
	ds_list_add(attacked_list, other);
	other.health_ -= dmg_attack1;
	//with (other){
	//	scr_collision_physics_effect_dir(other.hit_dis, other.image_angle);
	//}
	var effect_ins = instance_create_depth(other.x, other.y, -5, effect);
	effect_ins.master_obj = other;
	effect_ins.x_add = other.hurt_x_add;
	effect_ins.y_add = other.hurt_y_add;
}
for(var i = 0; i < ds_list_size(attacked_list); i++) {
	if (attacked_list[| i] == other) {
		break;
	}
	if (attacked_list[| i] != other && i == ds_list_size(attacked_list) - 1) {
		ds_list_add(attacked_list, other);
		other.health_ -= dmg_attack1;
		//with (other){
		//	scr_collision_physics_effect_dir(other.hit_dis, other.image_angle);
		//}
		var effect_ins = instance_create_depth(other.x, other.y, -5, effect);
		effect_ins.master_obj = other;
		effect_ins.x_add = other.hurt_x_add;
		effect_ins.y_add = other.hurt_y_add;
	}
}