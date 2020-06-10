<?php

session_start();

include 'db_con.php';

$name=$_POST["name"];
$email=$_POST["email"];
$review=$_POST["review"];
$rating=$_POST["rating"];
$hint=$_POST["hint"];


$qry_1=" insert into feedback (name,email,review,rating,hint) values('$name','$email','$review','$rating','$hint')" ;

mysqli_query($con,$qry_1);
mysqli_close($con);
header('Location:fthanku.html');

?>
