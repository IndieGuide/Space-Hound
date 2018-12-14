
//枚举
enum enum_player_state {
	MOVE			=	0,
	JUMP			=	1,
	JUMP_TWICE		=	2,
	ROLL			=	3,
	SQUART			=	4,
	DASH			=	5,
	SHOOT			=	6,
	CLIMB			=	7,	//正面爬
	CLIMBED			=	8,	//爬上台阶的动画
	STAND			=	9,
	FALL			=   10,
	ANIME			=   11
}
//状态机参数
state_array = noone;
state_array_length = 12;
state_ = enum_player_state.STAND;
state_previous = enum_player_state.STAND;
state_cache = -1;
state_x_move_flag = true;
state_y_move_flag = true;
state_busy_flag = false;
state_ins_bind = noone;
state_var_flag1 = false;

//状态关系数组  此数组列举了状态能否被其他状态打断,注意，是其他状态能否主动打断，被动进入应该在本状态的结束代码内
//注释：站立STAND基本是被动进入的，动画ANIME则是主动进入的
//问题记录：1.对跳跃JUMP下射击SHOOT有疑问，也许应该增加空中射击	2.蹲SQUART时射击SHOOT，这里可能要增加蹲射
//3.滚动有一个特别严重的bug，不知为什么滚后y的值会自动+1,使用滚动结束事件中y -2来应对了，有机会务必找出原因
//State										 MOVE	JUMP	JUMP_TWICE	ROLL	SQUART	DASH	SHOOT	CLIMB	CLIMBED	STAND	FALL	ANIME
state_bool[enum_player_state.MOVE		] = [false,	true,	false,		true,	true,	true,	true,	true,	false,	false,	true,	true];
state_bool[enum_player_state.JUMP		] = [false,	false,	true,		true,	false,	false,	true,	true,	true,	false,	false,	false];
state_bool[enum_player_state.JUMP_TWICE	] = [false,	false,	false,		true,	false,	false,	true,	true,	true,	false,	false,	false];
state_bool[enum_player_state.ROLL		] = [false,	false,	false,		false,	false,	false,	false,	false,	false,	false,	false,	true];
state_bool[enum_player_state.SQUART		] = [false,	false,	false,		true,	false,	false,	false,	true,	false,	false,	true,	true];
state_bool[enum_player_state.DASH		] = [false,	false,	false,		false,	false,	false,	false,	false,	false,	false,	false,	true];
state_bool[enum_player_state.SHOOT		] = [false,	false,	false,		false,	false,	false,	false,	false,	false,	false,	false,	true];
state_bool[enum_player_state.CLIMB		] = [false,	false,	false,		true,	false,	false,	false,	false,	false,	false,	false,	false];
state_bool[enum_player_state.CLIMBED	] = [false,	false,	false,		false,	false,	false,	false,	false,	false,	false,	false,	false];
state_bool[enum_player_state.STAND		] = [true,	true,	false,		true,	true,	true,	true,	true,	false,	false,	true,	true];
state_bool[enum_player_state.FALL		] = [false,	true,	false,		true,	false,	false,	false,	true,	true,	false,	false,	false];								
state_bool[enum_player_state.ANIME		] = [false,	false,	false,		false,	false,	false,	false,	false,	false,	false,	false,	false];								
