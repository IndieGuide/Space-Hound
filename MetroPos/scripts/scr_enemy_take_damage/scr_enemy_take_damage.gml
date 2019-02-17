///@param damage
var damage = argument0;
m_hp -= damage;
if m_hp <= 0
	instance_destroy();