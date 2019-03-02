if (image_index >= image_number - 1) {
	return true;
}

if (object_get_parent(player_weapon.object_index) == o_close_weapon_parent) {



	var inst = instance_place(x, y, o_enemy_parent);
	if inst {
		var damage = player_weapon.m_damage_normal;
		var player_x = x;
		var player_y = y;
		var player_face = get_face;
		with inst {
			if !m_invincible {
				call(do_take_physics_x, 30, other);
				call(do_take_damage, damage);
				audio_play_sound(a_sword_hit_default, 1,false);
				m_invincible = true;
				alarm[1] = 60;
				repeat (irandom(30)) {
					instance_create_depth(player_x + player_face*45,player_y - 30,-20,o_pp_close_weapon_hit);
				}
				with (o_camera) {
					x += random_range(-6,6);
				}
			}
		}
	}
	
}


return false;