//向后冲刺
if alarm[2]==-1{
	var houtui_=jump_width_-1;
	speed_[h]=houtui_;
	x_scale_=image_xscale*.8;
	y_scale_=image_yscale*1.4;
	effect_create_below(ef_smoke, x, y, 0, c_red);

	move_state = L_DASH;
	alarm[2]=30;
}



