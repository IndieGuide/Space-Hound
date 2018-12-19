TOGGLE_PAUSE=0;
paused_=false;
target_room = r_start;


global.window_width_ = 1920;
global.window_height_ = 1080;
window_set_size(global.window_width_,global.window_height_);
//view_set_hport(0,1080);
//view_set_wport(0,1920);
surface_resize(application_surface, window_get_width(), window_get_height());

global.camera_scale = 1;

score = 0;


global.font_black = font_add("SourceHanSansSC-Bold.otf", //字体名
								12,  //字号
								false, //加粗
								false,  //倾斜
								0,  //起始位置
								65535);  //最终位置

//隐藏solids对象
var solid_layer=layer_get_id("Solid");
layer_set_visible(solid_layer,false);


global.bullet_time_flag = false;
global.time_scale = 0.2;

global.enemy_bullet_speed_scale = 0.8;

//暂停房间的菜单层级
global.pause_menu_level = 0;

//debug模式标志
global.debug_flag = false;

//灯光全局开关
global.light_flag = true;

//人物ui
global.ui_surf = surface_create(1920,1080);
global.ui_flag = true;