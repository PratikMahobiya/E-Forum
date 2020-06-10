<?php

session_start();

include 'db_con.php';

$name=$_POST["name"];
$location=$_POST["location"];
$jobf=$_POST["jobf"];
$email=$_POST["email"];
$message=$_POST["message"];


$qry_1=" insert into request (name,location,jobf,email,message) values('$name','$location','$jobf','$email','$message')" ;

mysqli_query($con,$qry_1);
mysqli_close($con);
header('Location:rsuccess.html');

?>
