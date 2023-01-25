<?php
session_start();
$conn = new mysqli("localhost", "root", "", "clearance_system");
if($conn->connect_error){
die("connection failed:".connect_error);
}
// else {
//     echo "<script> alert('connection successful')</script>";
// }
?>