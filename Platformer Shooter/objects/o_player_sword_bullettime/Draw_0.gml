/// @description 

image_angle = point_direction(x,y+10,mouse_x,mouse_y);
image_yscale = o_player.get_flipped;
x = o_player.x-4*image_yscale;
y = o_player.y-o_player.sprite_height/2-6;

draw_sprite_noloop_ext(sprite_index, image_index, x, y, 1, image_yscale,image_angle,other.image_blend,other.image_alpha);
