<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<script src="https://getbootstrap.com/docs/4.0/assets/js/vendor/popper/.min.js"></script>
<script src="https://getbootstrap.com/docs/4.0/dist/js/bootstrap.min.js"></script>
<title>Untitled Document</title>
</head>

<body>
<?php

	$UserName=$_POST['txtUserName'];
	$Password=$_POST['txtPassword'];
	// Establish Connection with MYSQL
	$con = mysqli_connect ("localhost","root","","job");

	// Specify the query to Insert Record
	$sql = "insert into User_Master	(UserName,Password) values('".$UserName."','".$Password."')";
	// execute query
	mysqli_query ($con,$sql);
	// Close The Connection
	mysqli_close ($con);
	// echo '<script type="text/javascript">alert("User Inserted Succesfully");window.location=\'User.php\';</script>';
?>
	<div class="alert alert-success" role="alert">
		User Created Successfuly
    </div>
<?php
	header( "refresh:3;url= ../Admin/index.php" );
?>
</body>
</html>
