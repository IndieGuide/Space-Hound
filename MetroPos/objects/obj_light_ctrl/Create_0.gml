//Create the surface to draw all lights.
Surf_Light = surface_create(camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]));
global.back_surf = surface_create(camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]));
//The list of all light source id.
Light_List = ds_list_create();
light_enable = true;

Blackness_Value = 0.99; //The alpha value of the "darkness"
global.font_zkhappy= font_add("zk.ttf", //字体名
								18,  //字号
								false, //加粗
								false,  //倾斜
								0,  //起始位置
								65535);  //最终位置


draw_set_font(global.font_zkhappy);


/*
When creating a light source you call: fake_light_ini
When removing a light source you call: fake_light_remove (before deleting the instance)
If you want you can easily edit those variables on a light source:
Light_X //to move a light on the x axis
Light_Y //to move a light on the x axis
Light_Active //to toggle on/off
Light_Rotation //to rotate a light source
Light_Color //to change the color of a light source, use c_black for no color

You can also change those variable:
Light_Sprite
Light_Xscale
Light_Yscale
Light_Flick

But if you do so, you need to update the Light_Range variable using fake_light_max_range
ie:

Light_Sprite = spr_light_circle;
Light_Xscale = 2;
Light_Yscale = 2;
Light_Flick = 0.5;
Light_Range = fake_light_max_range(Light_Sprite, Light_Xscale, Light_Yscale, Light_Flick);

Or, simply call fake_light_ini(id, spr_light_circle, 3, 3, c_teal, 0.9);

You could also create a custom script that update only certain variable.

