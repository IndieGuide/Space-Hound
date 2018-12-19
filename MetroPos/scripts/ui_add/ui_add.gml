/// @description(gui_x,gui_y,create_obj)
/// @param gui_x
/// @param gui_y
/// @param create_obj
var ui_map = instance_create_layer(x,y,"UILayer",argument2);
with(ui_map) {
	m_gui_x = argument0;
	m_gui_y = argument1;
}
ds_list_add(ui_list, ui_map);