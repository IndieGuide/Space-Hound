var query_string = argument0;
var rslt = SQLiteWinQueryOpen(query_string);
show_debug_message("Query open result = " + rslt);
if ( rslt ==  "0" ) {
    var col_count = SQLiteWinQueryGetColumnCount();
    show_debug_message("Column count = " + col_count);
    var i = 0;
    ;
    while ( (rslt = SQLiteWinQueryGetNext()) == "0" ) {
        for(var j=0; j<real(col_count); j++){
            var cur_col = SQLiteWinQueryGetData(string(j));
            show_debug_message("["+string(i)+","+string(j)+"]:"+cur_col);
        }
        i++;
        //rslt = SQLiteWinQueryGetNext();
        show_debug_message("Query get next result = " + rslt );        
    }
    show_debug_message("Query end result = " + rslt );
    rslt = SQLiteWinQueryClose();
    show_debug_message("Query close result = " + rslt);
	return cur_col;
}
