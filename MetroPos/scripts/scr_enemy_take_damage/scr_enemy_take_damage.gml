///@param damage
///@param size力度
var damage = argument0;
m_hp -= damage;
scr_collision_physics_effect_x(argument1);
if m_hp <= 0 {
	instance_destroy(m_view);
	instance_destroy();	
}