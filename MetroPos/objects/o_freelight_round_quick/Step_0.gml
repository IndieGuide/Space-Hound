/// @description Insert description here
// You can write your code in this editor

	if light_strength != strength_target && !is_strength_get_target
		light_strength = lerp(light_strength, strength_target, 0.2);
		if light_strength >= 0.95
			light_strength = strength_target;
	else {
		is_strength_get_target = true;
		light_strength = lerp(light_strength, strength_previous, 0.2);
		if light_strength <= 0.05
			light_strength = strength_previous;
		if light_strength == strength_previous {
			is_strength_get_target = false;
			instance_destroy(self);
		}
	}
