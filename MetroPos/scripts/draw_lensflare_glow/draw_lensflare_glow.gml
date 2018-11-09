/// @description Lens flare by Esteban Devia
/// @param x
/// @param y
/// @param size_light
/// @param size_x
/// @param size_y
/// @param size_ring
/// @param Opacity
/// @param glowOpacity

//draw_lensflare(x,y,Radius,SizeX,SizeY,RingSize,Transparency,GlowOpacity)



//Getting ready to start, Creating variables
var xx, yy, alpha, LightSize, Size_x, Size_y, RingSize, Opacity, GlowOpacity;
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

xx = argument0
yy = argument1


//The radius of the light
LightSize = argument2

//Size of the lens flare
Size_x = argument3
Size_y = argument4
RingSize = argument5
//This Opacity is how transparent is the light (as higher the number is, the transparent the light is)
Opacity = argument6
//A value between 0 and 1
GlowOpacity = argument7





//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


        //Set the blending mode to add
        draw_set_blend_mode(bm_add)
        
        //Getting the center if the screen
        var center_x, center_y;
        if view_enabled = 1 
                {
                    center_x = __view_get( e__VW.XView, 0 ) + (__view_get( e__VW.WView, 0 )/2)
                    center_y = __view_get( e__VW.YView, 0 ) + (__view_get( e__VW.HView, 0 )/2)
                        //This is for not drawing the light if the light is too far
                        if point_distance(xx,yy,center_x,center_y) > __view_get( e__VW.HView, 0 )*1.5
                        {
                        draw_set_blend_mode(bm_normal)
                        exit;}
                } 
            else 
                {
                    center_x = room_width/2
                    center_y = room_height/2
                } 
                
                    

        //The glow
        draw_sprite_ext(Sglow,0,xx,yy,Size_x *1,Size_y *1,0,draw_get_colour(),GlowOpacity)
        
        
        //Blendingmode to Normal again...
        draw_set_blend_mode(bm_normal)
