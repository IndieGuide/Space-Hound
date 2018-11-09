/// @param string
var str = argument0;
if !scr_listener_var_exists(str) exit;
var index_ = scr_listener_var_index(str);

if listener_var[index_] == listener_var_previous[index_]
	return false;
else
	return true;