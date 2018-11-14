/// @param string
//放在step或draw里，返回存储的变量的值
var str = argument0;
if !scr_listener_var_exists(str) exit;
var index_ = scr_listener_var_index(str);

if variable_instance_exists(self, str)
{
   var ss = variable_instance_get(self, str);
}
else {
   var ss = -1;
}

listener_var_previous[index_] = listener_var[index_];
listener_var[index_] = ss;

return ss;