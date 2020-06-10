<?php

session_start();

include 'db_con.php';

$fname=$_POST["fname"];
$lname=$_POST["lname"];
$gender=$_POST["gender"];
$phoneno=$_POST["contact"];
$address=$_POST["address"];
$city=$_POST["city"];
$state=$_POST["state"];
$job=$_POST["job"];

$qry_1=" insert into profile (fname,lname,gender,phoneno,address,city,state,job) values('$fname','$lname','$gender','$phoneno','$address','$city','$state','$job')" ;

mysqli_query($con,$qry_1);
mysqli_close($con);
header('Location:index_1.html');

?>
