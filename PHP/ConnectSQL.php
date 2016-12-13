<?php
 
//Database Connection Variables

$db_name = "DATABASE_NAME";
 
$db_username = "DATABASE_USERNAME";
 
$db_password = "DATABASE_PASSWORD";
 
$db_host = "DATABASE_HOST";
 
/*
mysql_connect is a built in function that allows us to make an easy connection.
*/
 
mysql_connect($db_host, $db_username, $db_password, $db_name);
 
/*
mysql_select_db is a built in function that allows us to select the database. This is an essential function.
 
We use the 'die' function to check for errors.
 
*/
 
mysql_select_db($db_name) or die (mysql_error());
 
 
?>
