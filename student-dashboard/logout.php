<?php 
$conn = new mysqli("localhost", "root", "", "employee-scheduling");
if($conn->connect_error){
die("connection failed:".connect_error);
}
session_start();
session_unset();
session_destroy();

header("location: ../index_2.php");

?>

