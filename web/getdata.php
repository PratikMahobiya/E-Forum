<?php
$db_host = 'localhost'; // Server Name
$db_user = 'root'; // Username
$db_pass = ''; // Password
$db_name = 'forum'; // Database Name

$conn = mysqli_connect($db_host, $db_user, $db_pass, $db_name);
if (!$conn) {
	die ('Failed to connect to MySQL: ' . mysqli_connect_error());	
}
$location=$_POST["location"];
$jobf=$_POST["jobf"];
$sql = "select * from request where (location='$location' and jobf='$jobf')";
		
$query = mysqli_query($conn, $sql);

if (!$query) {
	die ('SQL Error: ' . mysqli_error($conn));
}
?>
<!DOCTYPE html>
<center>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"> 
<script type="text/javascript" src="js/bootstrap.min.js"></script>
</head>
<body>
<header class="bg-danger py-2 text-white text-center">
<h2>Requests</h2></header>
<div class="container">
<table style="width:100%" align="center" class="table table-striped table-bordered table-hover" >
  <tr>
    <th>No</th> 
    <th>Location</th>
    <th>Job</th>
    <th>Name</th>
    <th>Email</th>
    <th>Message</th>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
 
  </tr>
                <tbody>
		<?php
		$no 	= 1;
		while ($row = mysqli_fetch_array($query))
		{
			echo '<tr>
					<td>'.$no.'</td>
					<td>'.$row['location'].'</td>
					<td>'.$row['jobf'].'</td>
					<td>'.$row['name']. '</td>
					<td>'.$row['email'].'</td>
                                        <td>'.$row['message'].'</td>
                                        
				</tr>';
		
			$no++;
		}?>
		</tbody>
</table>

</div>
</body>
</html>
</center>
