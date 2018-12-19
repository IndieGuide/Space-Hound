var rslt = SQLiteWinOpenDB( "databases\\win.db" );
show_debug_message("Opened database = " + rslt);
rslt = SQLiteWinGetLibVersion();
show_debug_message("SQLite version = " + rslt);

//Open-Prepare Query
rslt = SQLiteWinQueryOpen("SELECT name FROM sqlite_master WHERE type='table';");
show_debug_message("Query open result = " + rslt);

//If query was opened successfully
if ( rslt ==  "0" ) {
    var i = 0;
    //Goto First/Next row
    rslt = SQLiteWinQueryGetNext();
    while ( rslt == "0" ) {
        //Get column data for current row
        var tbl_name = SQLiteWinQueryGetData("0");
        show_debug_message("Table:"+ tbl_name);
        i++;
        rslt = SQLiteWinQueryGetNext();
        show_debug_message("Query get next result = " + rslt );        
    }
    show_debug_message("Query end result = " + rslt );
    rslt = SQLiteWinQueryClose();
    show_debug_message("Query close result = " + rslt);
}

