/// @description state_execute
/// @param 
///state_in脚本返回-1表示不满足状态条件，如果满足条件，返回状态枚举值
///state_step脚本返回false表示继续执行，返回true表示当前状态自然结束，会运行out代码
///state_out脚本返回此状态自然结束的接续状态，当自然结束判断量is_state_over为true时状态机会得到该返回值
///状态机缺陷：如果状态正常退出导出到一个状态，而这个状态的进入条件没通过，下一轮状态机循环又没有打断它的状态，则会出现，状态step运行，但in没运行过的情况，这种情况会出现精灵错误，需要注意
//判断当前状态


var state_var = -1;
var is_state_over = false;
//寻找符合条件的状态，如果busy_flag打开了，则不执行
if !state_busy_flag {
	for (var state_index = 0;state_index <state_array_length; state_index++) {
		var bool_ = state_bool[state_];
		if (bool_[state_index]) {
			state_cache = script_execute(state_array[@ state_index, STATE_IN]);
			if state_cache != -1
				state_var = state_cache;
			if state_busy_flag break;
		}
	}
}
//切换状态
if (state_var != -1) {
	state_previous = state_;
	state_ = state_var;
}
//执行状态步事件
if (state_var == -1) {
	//执行状态代码
	is_state_over = script_execute(state_array[@ state_, STATE_STEP]);
}

//退出状态运行代码
if (state_var != -1)
	script_execute(state_array[@ state_previous, STATE_OUT]);
else if (is_state_over) {
	state_previous = state_;
	state_ = script_execute(state_array[@ state_previous, STATE_OUT]);
	script_execute(state_array[@ state_, STATE_IN]);
}
