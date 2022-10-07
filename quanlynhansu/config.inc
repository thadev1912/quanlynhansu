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
$conn= mysql_connect("localhost","root","") or die ("khong the ket noi duoc co so du lieu 2".mysql_error());
mysql_select_db("ms384",$conn) or die ("khong the ket noi duoc co so du lieu 2".mysql_error());
mysql_query("SET NAMES utf8");
echo "cai j the";
?>
