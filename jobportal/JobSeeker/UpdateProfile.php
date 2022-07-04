<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<?php
$txtId = $_POST['txtId'];
$txtName=$_POST['txtName'];
$txtAddress = $_POST['txtAddress'];
$txtCity=$_POST['txtCity'];
$txtEmail=$_POST['txtEmail'];
$txtMobile = $_POST['txtMobile'];
$txtQual=$_POST['txtQual'];
$txtUser=$_POST['txtUser'];
$txtPassword=$_POST['txtPassword'];
$txtBirth=$_POST['txtBirth'];
// Establish Connection with MYSQL
$con = mysqli_connect("localhost","root","","job");
// Select Database

// Specify the query to Update Record
$sql = "Update Jobseeker_reg  set JobSeekId='".$txtId."',JobSeekerName='".$txtName."',Address='".$txtAddress."',City='".$txtCity."',Email='".$txtEmail."',Mobile='".$txtMobile."',Qualification='".$txtQual."',UserName='".$txtUser."',Password='".$txtPassword."',BirthDate='".$txtBirth."' where JobSeekId=".$txtId."";
// Execute query
mysqli_query($con,$sql);
// Close The Connection
mysqli_close($con);
echo '<script type="text/javascript">alert("Profile Updated Succesfully");window.location=\'Profile.php\';</script>';
?>
</body>
</html>
