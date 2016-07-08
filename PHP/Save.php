<?php 

//Connect to MySQL
include_once "ConnectSQL.php";

//Data received from flash.
$Email = $_POST['Email'];
$Silver = $_POST['Silver'];

//Sets the information into the correct columns based on username
$sql = "UPDATE users SET Silver='$Silver' WHERE Email='$Email'";
//$sql = "UPDATE users SET Silver='$Silver', Test='$Test' WHERE Email='$Email'";
mysql_query($sql) or exit("Result_Message=Error, could not save!");

exit("Result_Message=Saved Successfully!");				  

?>
