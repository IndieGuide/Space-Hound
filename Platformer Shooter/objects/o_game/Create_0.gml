TOGGLE_PAUSE=0;
paused_=false;
target_room = r_start;
var _gui_width = camera_get_view_width(view_camera[0]);
var _gui_height = camera_get_view_height(view_camera[0]);
//display_set_gui_size(1920	,1080);
global.window_width_ = 1920;
global.window_height_ = 1080;
window_set_size(global.window_width_,global.window_height_);
//view_set_hport(0,1080);
//view_set_wport(0,1920);
surface_resize(application_surface, window_get_width(), window_get_height());
score = 0;

global.font_zkhappy= font_add("zk.ttf", //字体名
								18,  //字号
								false, //加粗
								false,  //倾斜
								0,  //起始位置
								65535);  //最终位置


draw_set_font(global.font_zkhappy);


//隐藏solids对象
var solid_layer=layer_get_id("Solids");
layer_set_visible(solid_layer,debug_mode);


global.bullet_time_flag = false;
global.time_scale = 0.1;

global.enemy_bullet_speed_scale = 0.8;

//暂停房间的菜单层级
global.pause_menu_level = 0;