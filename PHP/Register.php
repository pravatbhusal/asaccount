<?php 
//Connect to MySQL
include_once "ConnectSQL.php";

//Data received from flash.
$Email = $_POST['Email'];
$Password = $_POST['Password'];
$Username = $_POST['Email'];
//Check if email is in use
$CheckUsage = mysql_query("SELECT * FROM Characters WHERE Email = '$Email'");

//If there is more than 0 uses of the email
if(mysql_num_rows($CheckUsage) > 0){
exit("Result_Message=Email is already in use!");
} else {
$sql = "INSERT INTO Characters (Email, Password, Username) VALUES ('$Email', '$Password', '$Username')";
mysql_query($sql) or exit("Result_Message=Error in registration process!");
exit("Result_Message=Registration Complete!");  
}
?>
