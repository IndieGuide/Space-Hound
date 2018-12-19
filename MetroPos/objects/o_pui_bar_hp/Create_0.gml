/// @description ui基础属性
event_inherited();
do_draw = [self, scr_ui_draw_bar_hp]; 

db_open();
name = db_query_cell("select name from player where id = 0;");
db_close();