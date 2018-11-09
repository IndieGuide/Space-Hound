/// @description Insert description here
// You can write your code in this editor
if !instance_exists(o_light_control) exit;
o_light_control._pl_blurringAmount = 1000*(floor((x - default_x)*(100/64))/100);