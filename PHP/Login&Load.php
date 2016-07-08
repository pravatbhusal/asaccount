<?php 

//Connect to MySQL
include_once "ConnectSQL.php";

//Receive variables from flash
$Email = $_POST['Email'];
$Password = $_POST['Password'];

//If the posted variable is equal to the "checkLogin" string (which is in flash) 
if ($_POST['Connection'] == "Connected") { 
 
$sql = "SELECT * FROM Characters WHERE Email='$Email' AND Password='$Password'";
$query = mysql_query($sql);
 
//Counts the records that match the query
$login_counter = mysql_num_rows($query);
 
//If the login counter is greater, that means the data is present!
if ($login_counter > 0) {

//While loop receives all of the account data
while ($data = mysql_fetch_array($query)) {

//Receive the account data
$Username = $data["Username"];    
$Silver = $data["Silver"];
 
//Print the data back to flash 
print "Username=$Username";
print "&";
print "Silver=$Silver";

} 
} else {
print "CheckLogin=The login details do not match our records!";
}
}
?>
