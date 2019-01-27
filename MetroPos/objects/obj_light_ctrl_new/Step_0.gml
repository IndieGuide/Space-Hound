
//if is_time_change {
//	if time != time_target && !is_time_get_target
//		time += 0.01;
//	else {
//		is_time_get_target = true;
//		time -= 0.01;
//		if time == time_previous {
//			is_time_change = false;
//			is_time_get_target = false;
//		}
//	}
//}
// get key times:

color[0,0] = col_r;
color[0,1] = col_g;
color[0,2] = col_b;
con_sat_brt[0,0] = con;
con_sat_brt[0,1] = sat;
con_sat_brt[0,2] = brt-1;
con_sat_brt[0,3] = pop_s;
con_sat_brt[0,4] = pop_t;

key_previous	= min(floor(time * number_of_key_times), number_of_key_times -1);
key_next		= (key_previous + 1) mod number_of_key_times;

// get lerp amount:
var lerp_amt	= (time - key_previous/number_of_key_times) * number_of_key_times;

//// mix colors:
//color_mix		=  [lerp(color[key_previous,0], color[key_next,0], lerp_amt),
//					lerp(color[key_previous,1], color[key_next,1], lerp_amt),
//					lerp(color[key_previous,2], color[key_next,2], lerp_amt)];
					
//con_sat_brt_mix	=  [lerp(con_sat_brt[key_previous,0], con_sat_brt[key_next,0], lerp_amt),
//					lerp(con_sat_brt[key_previous,1], con_sat_brt[key_next,1], lerp_amt),
//					lerp(con_sat_brt[key_previous,2], con_sat_brt[key_next,2], lerp_amt),
//					lerp(con_sat_brt[key_previous,3], con_sat_brt[key_next,3], lerp_amt),
//					lerp(con_sat_brt[key_previous,4], con_sat_brt[key_next,4], lerp_amt)];

// mix colors:
color_mix		=  [color[0,0],
					color[0,1],
					color[0,2]];
					
con_sat_brt_mix	=  [con_sat_brt[0,0],
					con_sat_brt[0,1],
					con_sat_brt[0,2],
					con_sat_brt[0,3],
					con_sat_brt[0,4]];

