///@param damage
///@param size力度
///@param collision_inst
var damage = argument0;
m_hp -= damage;
scr_collision_physics_effect_x(argument1, argument2);
if m_hp <= 0 {
	instance_destroy(m_view);
	instance_destroy();	
}