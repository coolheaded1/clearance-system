<?php 
$conn = new mysqli("localhost", "root", "", "clearance_system");
if($conn->connect_error){
die("connection failed:".connect_error);
}
session_start();
session_unset();
session_destroy();

header("location: ../");

?>

