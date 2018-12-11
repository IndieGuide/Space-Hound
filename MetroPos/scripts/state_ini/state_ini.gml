
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
	CLIMB_RIGHT		=	8,	//朝右爬
	CLIMB_LEFT		=	9,	//朝左爬
	CLIMBED			=	10,	//爬上台阶的动画
	STAND			=	11,
	ANIME			=   12
}
//状态机参数
state_array = noone;
state_array_length = 13;
state_ = enum_player_state.STAND;
state_previous = enum_player_state.STAND;
state_x_move_flag = true;
state_y_move_flag = true;


//状态关系数组  此数组列举了状态能否被其他状态打断,注意，是其他状态能否主动打断，被动进入应该在本状态的结束代码内
//注释：站立STAND基本是被动进入的，动画ANIME则是主动进入的
//问题记录：1.对跳跃JUMP下射击SHOOT有疑问，也许应该增加空中射击	2.蹲SQUART时射击SHOOT，这里可能要增加蹲射
//State										 MOVE	JUMP	JUMP_TWICE	ROLL	SQUART	DASH	SHOOT	CLIMB	CLIMB_RIGHT	CLIMB_LEFT	CLIMBED	STAND	ANIME
state_bool[enum_player_state.MOVE		] = [false,	true,	false,		true,	true,	true,	true,	true,	true,		true,		true,	false,	true];
state_bool[enum_player_state.JUMP		] = [false,	false,	true,		false,	false,	false,	true,	true,	true,		true,		true,	false,	false];
state_bool[enum_player_state.JUMP_TWICE	] = [false,	false,	false,		false,	false,	false,	true,	true,	true,		true,		true,	false,	false];
state_bool[enum_player_state.ROLL		] = [false,	false,	false,		false,	false,	false,	false,	false,	false,		false,		false,	false,	true];
state_bool[enum_player_state.SQUART		] = [false,	false,	false,		true,	false,	false,	false,	false,	false,		false,		false,	false,	true];
state_bool[enum_player_state.DASH		] = [false,	false,	false,		false,	false,	false,	false,	false,	false,		false,		false,	false,	true];
state_bool[enum_player_state.SHOOT		] = [false,	false,	false,		false,	false,	false,	false,	false,	false,		false,		false,	false,	true];
state_bool[enum_player_state.CLIMB		] = [false,	true,	false,		true,	false,	false,	false,	false,	false,		false,		true,	false,	false];
state_bool[enum_player_state.CLIMB_RIGHT] = [false,	true,	false,		true,	false,	false,	false,	false,	false,		false,		true,	false,	false];
state_bool[enum_player_state.CLIMB_LEFT	] = [false,	true,	false,		true,	false,	false,	false,	false,	false,		false,		true,	false,	false];
state_bool[enum_player_state.CLIMBED	] = [false,	false,	false,		false,	false,	false,	false,	false,	false,		false,		false,	false,	false];
state_bool[enum_player_state.STAND		] = [true,	true,	false,		true,	true,	true,	true,	true,	true,		true,		false,	false,	true];
state_bool[enum_player_state.ANIME		] = [false,	false,	false,		false,	false,	false,	false,	false,	false,		false,		false,	false,	false];								
