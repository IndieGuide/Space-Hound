/// @description Insert description here
// You can write your code in this editor
if (instance_exists(o_player)) {
	with (o_player) {
		other.x = x;
		other.y = y - player_height/2;
	}
	
	switch o_player.state_{
		case enum_player_state.STAND:
			light_xscale = lerp(light_xscale , normal_scale, 0.1);
			light_yscale = lerp(light_yscale , normal_scale, 0.1);
			light_strength = lerp(light_strength , normal_strength, 0.05);
		break;
		case enum_player_state.MOVE:
		case enum_player_state.CLIMBED:
			light_xscale = lerp(light_xscale , move_scale, 0.1);
			light_yscale = lerp(light_yscale , move_scale, 0.1);
			light_strength = lerp(light_strength , normal_strength, 0.05);
		break;		
		case enum_player_state.JUMP:
		case enum_player_state.JUMP_TWICE:
		case enum_player_state.CLIMB:
		case enum_player_state.SQUART:
			light_xscale = lerp(light_xscale , jump_scale, 0.1);
			light_yscale = lerp(light_yscale , jump_scale, 0.1);
			light_strength = lerp(light_strength , normal_strength, 0.05);
		break;
		case enum_player_state.ROLL:
			light_xscale = lerp(light_xscale , roll_scale, 0.1);
			light_yscale = lerp(light_yscale , roll_scale, 0.1);
			light_strength = lerp(light_strength , normal_strength, 0.05);
		break;
		case enum_player_state.SHOOT:
			light_xscale = lerp(light_xscale , move_scale, 0.1);
			light_yscale = lerp(light_yscale , move_scale, 0.1);
			light_strength = lerp(light_strength , normal_strength, 0.05);
		break;		
		default:
			light_xscale = lerp(light_xscale , normal_scale, 0.1);
			light_yscale = lerp(light_yscale , normal_scale, 0.1);
			light_strength = lerp(light_strength , normal_strength, 0.05);
		break;
	}
}

