if !light_enable exit;
surface_set_target(Surf_Light);

draw_clear_alpha(c_black, Blackness_Value); //The opacity of the darkness is set here.

//That part will loops through all objects listed on the list.
var size = ds_list_size(Light_List);
var x1, y1;
var count = 0;
var light;
var flick = 0;
var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);
var cam_w = camera_get_view_width(view_camera[0]);
var cam_h = camera_get_view_height(view_camera[0]);
repeat(size)
{
	light = ds_list_find_value(Light_List, count);

    with(light)
    {
        if(Light_Active == 1 && fake_light_is_on_view(cam_x, cam_y, cam_w, cam_h, Light_Range))
        {
        x1 = Light_X-cam_x;
        y1 = Light_Y-cam_y;
        flick = choose(1, 1, 1, 1, 1, 1, 1, 1,  1, 1, 1, 1, 1, 1, 1, 1, Light_Flick); //You can add or remove some "1".
        gpu_set_blendmode(bm_subtract); //Punch a gradient hole
        draw_sprite_ext(Light_Sprite, 0, x1, y1, Light_Xscale*flick, Light_Yscale*flick, Light_Rotation, c_black, 1);
        gpu_set_blendmode(bm_zero); //Add some color
        draw_sprite_ext(Light_Sprite, 0, x1, y1, Light_Xscale*flick, Light_Yscale*flick, Light_Rotation, Light_Color, 0.5); //Crank the last argument to increase color opacity.
        }
    }
    
count++;
}

gpu_set_blendmode(bm_normal);//Return to normal.
surface_reset_target();//Always reset target!
