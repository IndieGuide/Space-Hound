// Create the save data structure
save_data = ds_map_create();

with (obj_player_stats) {
	obj_pause_menu.save_data[? "room"] = previous_room;
	obj_pause_menu.save_data[? "x"] = player_xstart;
	obj_pause_menu.save_data[? "y"] = player_ystart;
	obj_pause_menu.save_data[? "hp"] = hp;
	obj_pause_menu.save_data[? "maxhp"] = maxhp;
	obj_pause_menu.save_data[? "stamina"] = stamina;
	obj_pause_menu.save_data[? "maxstamina"] = maxstamina;
	obj_pause_menu.save_data[? "expr"] = expr;
	obj_pause_menu.save_data[? "maxexpr"] = maxexpr;
	obj_pause_menu.save_data[? "level"] = level;
	obj_pause_menu.save_data[? "attack"] = attack;
}

var save_string = json_encode(save_data);
ds_map_destroy(save_data);
save_string = base64_encode(save_string);

var file = file_text_open_write(working_directory + "mysavegame.txt");
file_text_write_string(file, save_string);
file_text_close(file);