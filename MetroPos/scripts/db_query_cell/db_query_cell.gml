var query_string = argument0;
var rslt = SQLiteWinQueryOpen(query_string);
show_debug_message("Query open result = " + rslt);
if ( rslt ==  "0" ) {
    var col_count = SQLiteWinQueryGetColumnCount();
	//if col_count != 1则说明查询语句有问题
    show_debug_message("Column count = " + col_count);
	rslt = SQLiteWinQueryGetNext()
    var cur_col = SQLiteWinQueryGetData(string(0));
    show_debug_message("[0]:"+cur_col);    
    show_debug_message("Query end result = " + rslt );
    rslt = SQLiteWinQueryClose();
    show_debug_message("Query close result = " + rslt);
	return cur_col;
}
