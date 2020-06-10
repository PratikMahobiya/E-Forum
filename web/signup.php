<?php

session_start();

include 'db_con.php';

$name=$_POST["name"];
$email=$_POST["email"];
$passwd=$_POST["passwd"];


$qry_1=" insert into reg (name,email,passwd) values('$name','$email','$passwd')" ;

mysqli_query($con,$qry_1);
mysqli_close($con);
header('Location:index_1.html');

?>
