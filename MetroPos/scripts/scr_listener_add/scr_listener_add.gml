/// @description
/// @param var_name_
listener_var_name_ = argument0;

listener_index ++;

listener_array[listener_index] = listener_var_name_;


if variable_instance_exists(self, listener_var_name_)
{
   listener_var[listener_index] = variable_instance_get(self, listener_var_name_);
   listener_var_previous[listener_index] = variable_instance_get(self, listener_var_name_);
}
