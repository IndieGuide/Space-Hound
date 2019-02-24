/// @description 
var damage = m_damage;

with(other) {
	call(do_take_physics_x, 15, other);
	call(do_take_damage, damage);
	m_act_state = enum_enemy_normal_state.INJURED;
}
instance_destroy();
