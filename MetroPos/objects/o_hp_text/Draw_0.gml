/// @description Insert description here
// You can write your code in this editor
if (image_index < image_number - 1) && !is_anime_end {
	draw_self();
	alarm[0] = alpha_change_time;
} else {
	is_anime_end = true;

}
if is_anime_end {
	draw_sprite_ext(m_sprite, image_number - 1, x, y, 1, 1, 0, c_white, m_alpha);
	if alarm[0] == -1 {
		m_alpha -= 0.1;
		alpha_change_time -= 20;
		alarm[0] = alpha_change_time;
		if m_alpha == 0 {
			instance_destroy();
		}
	}
}