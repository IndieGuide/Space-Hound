/// @description 
if !menu_level_flag exit;
if !selected_flag {
	bind_slider = instance_create_layer(402, 163, "Instances", o_pause_button_audio_slider);
	bind_slider.create_obj = self;
	selected_flag = true;
	with (o_pause_button_bgmusic) {
		if selected_flag {
			selected_flag = false;
			instance_destroy(bind_slider);
			sprite_index = sprite_normal;
		}
	}
} else {
	instance_destroy(bind_slider); 
	selected_flag = false;
}