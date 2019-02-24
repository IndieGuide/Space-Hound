/// @description 
var damage = m_damage;

call(other.do_take_physics_x, 20, self);
call(other.do_take_damage, damage);

//这里应该切换玩家的状态机到受创
////改变玩家状态
//	with(o_player) {
//		var player_state = state_;
//		var player_do_take_damage = do_take_damage;
//	}
//	if player_state != enum_player_state.INJURED {
//		player_state = enum_player_state.INJURED;
//		//造成伤害
//		call(player_do_take_damage, m_normal_damage, 20, self);
//		m_attack_succeed_flag = true;
//		alarm[0] = 90;
//	} else {
//		player_state = enum_player_state.INJURED_TWICE;	
//		//造成伤害
//		call(player_do_take_damage, m_normal_damage, 20, self);
//		m_attack_succeed_flag = true;
//		alarm[0] = 90;
//	}

instance_destroy();