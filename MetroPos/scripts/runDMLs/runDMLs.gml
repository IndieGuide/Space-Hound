var 	rslt = SQLiteWinExecuteUpdate("UPDATE t1 SET b = 1150 WHERE a = 2;");
show_debug_message("Updated rows = " + rslt);
	
runQuery();

	rslt = SQLiteWinExecuteDelete("DELETE FROM t1 WHERE a = 1;");
show_debug_message("Deleted rows = " + rslt);
	
runQuery();
