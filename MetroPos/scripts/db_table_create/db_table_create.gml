var rslt = SQLiteWinExecuteSQL("DROP TABLE IF EXISTS t1;");
show_debug_message("Drop table = " + rslt);

rslt = SQLiteWinExecuteSQL("CREATE TABLE t1 (a INTEGER PRIMARY KEY, b INTEGER);");
show_debug_message("Created table = " + rslt);

rslt = SQLiteWinExecuteInsert("INSERT INTO t1 VALUES (1, 123)");
show_debug_message("Insert values = " + rslt);

rslt = SQLiteWinExecuteInsert("INSERT INTO t1 VALUES (2, 50)");
show_debug_message("Insert values = " + rslt);
