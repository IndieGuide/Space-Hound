/// @description Insert description here
// You can write your code in this editor
scr_listener_get("bgvolumn");
if scr_listener_is_var_change("bgvolumn") {
	audio_sound_gain(bgsound, bgvolumn, 10);
}