/// @description
if (room == r_pause) exit;
if (room != last_room) {
	audio_stop_all();
}

if (room == r_test && last_room != r_test) {
	bgsound = audio_play_sound(a_scene1,bgvolumn,true);
	last_room = r_test;
}
if (room == r_start) {
	bgsound = audio_play_sound(a_title,bgvolumn,false);
	last_room = r_start;
}