<?php
error_reporting(0); 
if(isset($_POST['register1']))
{
		$fn=$_POST['name1'];
			$ps=$_POST['psw'];
			$ad=$_POST['add'];
			$mail=$_POST['uid'];
			$mob=$_POST['mob'];
			
			$con=mysqli_connect("localhost","root","","hackathon");
				$sql="SELECT * from credentials where email='$mail';";
			$count=mysqli_num_rows(mysqli_query($con,$sql));
			if($count>=1)
			{
				echo "<script>alert('user already exist');</script>";
				session_start();
				$_SESSION['uexist']=1;
				header("Location: login.php");
				
			}
			else
			{
				$con=mysqli_connect("localhost","root","","hackathon");
			
			$s="INSERT INTO credentials(PASSWORD,name, email, mobile,  address) VALUES('$ps','$fn' ,'$mail','$mob','$ad');";
			if(mysqli_query($con,$s)){
				echo "<script>alert('data inserted successfully');</script>";
				header('Location:login.php');
			}
			else
			{
				session_start();
				echo "<script>alert('cant insert into database');</script>";
				$_SESSION['insd']=1;
				header("Location: login.php");
				
			}

			}
}
?>
				