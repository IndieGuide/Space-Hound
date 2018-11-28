/// @description Init

//-----------------------------------------------------------------------------
#region TITLE, INFO, CORNER, CLICK (optional):
//-----------------------------------------------------------------------------


click_region_gui	= true;		// false: mouse click region in room space | true: mouse click region in gui space
deselectable		= false;	// Allow deselecting by clicking on the module again
#endregion
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
#region SPRITE & SHADER (mandatory):
//-----------------------------------------------------------------------------
shader			= shd_application_out;
u_col			= shader_get_uniform(shader, "col");
u_con_sat_brt	= shader_get_uniform(shader, "con_sat_brt");

s_lights		= shader_get_sampler_index(shader, "lights");
tex_lights		= -1;
srf_lights		= -1;

// COLOR VARS:
// ----------------------------------------------------------------------------
color_mix		= -1;
color[0,0]		= undefined;

con_sat_brt_mix	= -1;

key_previous	= -1;
key_next		= -1;

// KEY TIMES:
// ----------------------------------------------------------------------------
// arguments:		R		G		B		con		sat		brt		popS	popT
scr_add_key_time(030,	120,	225,	0.60,	1.00,  -0.20,	0.80,	0.65);	// 00h
scr_add_key_time(040,	125,	215,	0.65,	0.90,  -0.20,	0.70,	0.65);	// 02h
scr_add_key_time(080,	080,	185,	0.80,	0.60,  -0.15,	0.20,	0.80);	// 04h
scr_add_key_time(125,	070,	175,	1.00,	0.85,  -0.10,  -0.50,	0.60);	// 06h
scr_add_key_time(160,	145,	100,	1.20,	0.65,  -0.03,	0.00,	1.00);	// 08h
scr_add_key_time(128,	128,	128,	1.00,	1.00,	0.00,	0.00,	1.00);	// 10h
scr_add_key_time(128,	128,	128,	1.20,	0.85,	0.05,	0.00,	1.00);	// 12h
scr_add_key_time(128,	128,	128,	1.00,	1.00,	0.00,	0.00,	1.00);	// 14h
scr_add_key_time(140,	130,	120,	1.10,	0.80,	0.00,	0.00,	1.00);	// 16h
scr_add_key_time(145,	120,	090,	1.10,	0.75,	0.00,	0.00,	1.00);	// 18h
scr_add_key_time(150,	060,	190,	1.25,	0.70,  -0.05,  -0.50,	0.60);	// 20h
scr_add_key_time(080,	080,	185,	0.80,	0.60,  -0.15,	0.20,	0.80);	// 22h

number_of_key_times = array_height_2d(color);


global.font_zkhappy= font_add("zk.ttf", //字体名
								18,  //字号
								false, //加粗
								false,  //倾斜
								0,  //起始位置
								65535);  //最终位置


draw_set_font(global.font_zkhappy);


// ----------------------------------------------------------------------------
#endregion
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
#region GUI: 
//-----------------------------------------------------------------------------

#endregion
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
#region RESIZE VIEW AND APPLICATION SURFACE (optional): 
//-----------------------------------------------------------------------------
// don't forget to draw in a draw gui event if you dont want to scale the sprite

application_surface_draw_enable(false);
#endregion
//-----------------------------------------------------------------------------

