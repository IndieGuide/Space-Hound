/// @description 
var damage = m_damage;
with(other) {
	call(do_take_damage ,damage);
	scr_collision_physics_effect_x(15);
	m_act_state = enum_enemy_normal_state.INJURED;
}
instance_destroy();
