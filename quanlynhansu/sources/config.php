<?php
$webmaster = "ctn@ctnvietnam.com";
$db_host = "localhost";
$db_username = "root";
$db_password = "";
$db_name = "ms384";
// Begin config
$info['db_host'] = "localhost";
$info['db_name'] = "ms384";
$info['db_username'] = "root";
$info['db_password'] = "";
// End config

$conn=mysqli_connect("localhost","root","","quanlynhansu") or die("Khong the ket noi".mysqli_error());
mysqli_set_charset($conn,'UTF8');
/*$conn = @mysqli_connect($db_host, $db_username, $db_password) or die(mysql_error());
$db = @mysqli_select_db($db_name, $conn) or die(mysql_error());
*/
?>
