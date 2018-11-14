///@description 死亡事件
audio_play_sound(a_explosion,5,false);
effect_create_above(ef_explosion, x, y, 1, c_orange);
score += 10;
if (global.bullet_time_flag){
	o_camera.kill_feature_flag = true;
	o_camera.feature_x = x;
	o_camera.feature_y = y;
}