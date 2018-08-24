/// @description Create the variables
speed_=[0,0];
max_speed_=4;
gravity_=.5;
acceleration_=1;
friction_=.3;
jump_height_=-10;
jump_width_=-30;

draw_s_xiaodao1=0;



max_health_=5;//最大血量
health_=max_health_; //生命值 
invincible_=false;//无敌状态

//map the keys



//Bullet cooldown

bullet_cooldown_=room_speed/6;
alarm[0] = bullet_cooldown_;

//Scale Variables 弹性形变
//x_scale_=image_xscale;
//y_scale_=image_yscale;

//Hide the solods layer隐藏solids对象
var solid_layer=layer_get_id("Solids");
layer_set_visible(solid_layer,debug_mode);


//身上的装备
default_gun = instance_create_layer(x, y, "Instances", o_gun0); 
player_gun = default_gun;


 
//移动状态，包括普通移动，左冲刺，右冲刺
move_state = MOVE;


//小刀subimg
draw_xiaodao1 = false;
draw_xiaodao2 = false;
draw_xiaodao2_start = false;
img_xiaodao = 0;
knifeing1 = true;
knifeing2 = true;