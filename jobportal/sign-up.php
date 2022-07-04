<?php
    $error = NULL;

    if(isset($_POST['submit'])){
    //get the form data
        $u = $_POST['u'];
        $p = $_POST['p'];
        $p2 = $_POST['p2'];
        $e = $_POST['e'];

    if(strlen($u) < 5)
    {
        $error = "<p>Your username must be of 5 charecters</p>";
    }elseif ($p2 != $p) {
        $error = "<p>Your password do not match</p>";
    }else{
        //Form is valid
        // connect to database
        $mysqli = NEW MySQLi('localhost','root','','job');
        // sanatize form data
        $u = $mysqli->real_escape_string($u);
        $p = $mysqli->real_escape_string($p);
        $p2 = $mysqli->real_escape_string($p2);
        $e = $mysqli->real_escape_string($e);
        //Generate VKeys
        $vkey = md5(time().$u);
        //insert values into databae
        $insert = $mysqli->query("INSERT INTO accounts(username,password,vkey,email)VALUES('$u','$p','$vkey','$e')");
        if($insert){
            //Send email
            $to = $e;
            $subject = "Email Verification";
            $message = "<a href='http://localhost/registration/verify.php?vkey=$vkey'>Register Account</a>";
            $headers = "From : tauheed.safi.tsm@gmail.com\r\n";
            $headers = "MIME-Version: 1.0" . "\r\n";
            $headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";

            mail($to,$subject,$message,$headers);
            header('location:index.php');
        }
        else{
            echo $mysqli->error;
        }
    }
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="./css/sign-up.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign up</title>
</head>
<body>
<section class="login">
  <div class="container">
    <h3 class="title">Sign up</h3>
    
    <div class="social-login">
      
      
      <a href="JobSeeker.php">
      <input type="submit" name="button" id="button" value="         Job Seeker         ">
      </a>
      
      <a href="Employer.php">
      <input type="submit" name="button" id="button" value="         Employer         ">
      </a>
      
      
    </div>
    
    <p class="separator"><span>&nbsp;</span>Or<span>&nbsp;</span></p>
    
    
    <p class="additional-act">Already have an account? <span> <a href="index.php">Sign in</a> </span></p>
    
    
  </div>
</section>
</body>
</html>