if (room == r_logo || room == r_start) exit;

//if global.bullet_time_flag {
//	application_surface_draw_enable(true);
//}

if (room == r_pause) {
	if (global.pause_menu_level != 0) {
		if(global.pause_menu_level == 1 || global.pause_menu_level == 2)
			global.pause_menu_level --;
		if(global.pause_menu_level == 3 || global.pause_menu_level == 4 || global.pause_menu_level == 5)
			global.pause_menu_level = 1;
		exit;
	}
	if global.bullet_time_flag {
		application_surface_draw_enable(false);
	}
	room_goto(target_room);	
	global.pause_menu_level = 0;
	exit;
}
target_room = room;
room_goto(r_pause);


