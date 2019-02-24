if (image_index >= image_number - 1) {
	return true;
}

if (object_get_parent(player_weapon.object_index) == o_close_weapon_parent) {



	var inst = instance_place(x, y, o_enemy_parent);
	if inst {
		var damage = player_weapon.m_damage_normal;
		with inst {
			if !m_invincible {
				call(do_take_physics_x, 30, other);
				call(do_take_damage, damage);

				m_invincible = true;
				alarm[1] = 60;
			}
		}
	}
	
}


return false;