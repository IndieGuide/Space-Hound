///@param obj_to_search:0player,1o_solid_ladder

with(m_view) {
	switch (argument0) {
	    case 0:
	        if place_meeting(x, y, o_player) {
				return instance_find(o_player, 0);
			}
	        break;
		case 1:
			if place_meeting(x, y, o_solid_ladder_parent) {
				return instance_find(o_player, 0);
			}
			break;
	    default:
	        if place_meeting(x, y, o_player) {
				return instance_find(o_player, 0);
			}
	        break;
	}
}
return false;