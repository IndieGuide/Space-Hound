/// @description Insert description here
// You can write your code in this editor
event_inherited();

switch (m_act_state) {
	case enum_enemy_normal_state.IDOL:
	case enum_enemy_normal_state.MOVE:
	case enum_enemy_normal_state.JUMP:
	case enum_enemy_normal_state.SQUART:
		draw_sprite_ext(sprite_index, image_index, x, y,m_face,1,0,image_blend,image_alpha);
		break;
	case enum_enemy_normal_state.ATTACK:
		draw_sprite_ext(sprite_index, image_index, x, y,m_face,1,0,image_blend,image_alpha);
		break;
	case enum_enemy_normal_state.INJURED:
		draw_sprite_ext(sprite_index, image_index, x, y,m_face,1,0,c_red,image_alpha);
		m_act_state = enum_enemy_normal_state.IDOL;
		break;
	default:
		draw_sprite_ext(sprite_index,image_index, x, y,m_face,1,0,image_blend,image_alpha);
		break;
}

