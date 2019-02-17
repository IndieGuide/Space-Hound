/// @description call(method, ...args)
/// @param method
/// @param ...args
var m = argument[0];
with (m[0]) switch (argument_count) {
    case 1: return script_execute(m[1]);
    case 2: return script_execute(m[1], argument[1]);
    case 3: return script_execute(m[1], argument[1], argument[2]);
	case 4: return script_execute(m[1], argument[1], argument[2], argument[3]);
	case 5: return script_execute(m[1], argument[1], argument[2], argument[3], argument[4]);
	case 6: return script_execute(m[1], argument[1], argument[2], argument[3], argument[4], argument[5]);
	
    // and so on...
    default: show_error("Too many arguments for mt!", true); exit;
}
show_error("Couldn't find instance " + string(m[0])
    + " for " + script_get_name(m[1]) + " call.", true);