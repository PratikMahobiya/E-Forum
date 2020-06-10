 <?php
session_start();

include 'db_con.php';

IF(ISSET($_POST['login'])){
	$email = $_POST["email"];
	$password = $_POST["password"];
	
	$cek = mysqli_num_rows(mysqli_query($con,"SELECT email FROM reg WHERE email='$email' AND passwd='$password'"));
//	$data = mysqli_fetch_array(mysqli_query("SELECT * FROM registrationform WHERE d_mail='$email' AND d_pwd='$password'"));
	IF($cek>0)
	{
	 
  
		$_SESSION['name'] = $cek['email'];
               
                
		
		header('location:index_1.html');
    }
        else{
		echo "<script language=\"javascript\">alert(\"Invalid username or password\");document.location.href='login.html';</script>";
	}
}
?>