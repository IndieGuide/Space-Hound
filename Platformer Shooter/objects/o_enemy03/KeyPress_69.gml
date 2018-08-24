//向前冲刺
if alarm[2]==-1{

	var qianchong_=jump_width_+60;
	speed_[h]=qianchong_;
	x_scale_=image_xscale*.8;
	y_scale_=image_yscale*1.4;
	effect_create_below(ef_smoke, x, y, 0, c_red);

	move_state = R_DASH;
	alarm[2]=30;
}









