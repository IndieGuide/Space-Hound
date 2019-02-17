/// mt(method, ...args)
/// @param method
/// @param ...args
gml_pragma("global", @'// remove "@" in GMS1
// 4 -> max argument count as per switch block below
global.mt_temp_0 = array_create(4);
global.mt_temp_1 = array_create(4);
');
var m = argument[0];
var n = array_length_1d(m) - 2; // number of arguments in method-reference
var w = global.mt_temp_1; // temp array to store combined arguments
array_copy(w, 0, m, 2, n); // copy arguments from method-reference to temp array
// copy script arguments to temp array:
for (var i = 1; i < argument_count; i++) w[@n++] = argument[i];
var found = false, result;
with (m[0]) {
    found = true;
    switch (n) {
        case 0: result = script_execute(m[1]); break;
        case 1: result = script_execute(m[1], w[0]); break;
        case 2: result = script_execute(m[1], w[0], w[1]); break;
        case 3: result = script_execute(m[1], w[0], w[1], w[2]); break;
        case 4: result = script_execute(m[1], w[0], w[1], w[2], w[3]); break;
        case 5: result = script_execute(m[1], w[0], w[1], w[2], w[3], w[4]); break;
        // and so on...
        default: show_error("Too many arguments for mt!", true); exit;
    }
}
array_copy(w, 0, global.mt_temp_0, 0, n); // reset the temp array
if (found) return result;
show_error("Couldn't find instance " + string(m[0])
    + " for " + script_get_name(m[1]) + " call.", true);