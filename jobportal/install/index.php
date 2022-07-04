 <?php
 if (isset($_POST['submit'])) { 
    

        set_time_limit(300);
        $filename = 'job.sql';
        $mysql_host = 'localhost';
        $mysql_username = 'root';
        $mysql_password = '';
        $mysql_database = 'job';

        $con = @new mysqli($mysql_host, $mysql_username, $mysql_password, $mysql_database);
        if ($con->connect_errno) {
            echo "Failed to connect to MySQL: " . $con->connect_errno;
            echo "<br/>Error: " . $con->connect_error;
        }

        // Temporary variable, used to store current query
        $templine = '';
        // Read in entire file
        $lines = file($filename);
        // Loop through each line

        foreach ($lines as $line) {
            // Skip it if it's a comment
            if (substr($line, 0, 2) == '--' || $line == '')
                continue;
            // Add this line to the current segment
            $templine .= $line;
            // If it has a semicolon at the end, it's the end of the query
            if (substr(trim($line), -1, 1) == ';') {
                // Perform the query
                $con->query($templine) or print('Error performing query \'<strong>' . $templine . '\': '   . '<br /><br />');
                // Reset temp variable to empty
                $templine = '';
            }
        }
        ?>
        <div class="alert alert-success" role="alert">
            Tables imported Successfully
        </div>
          <?php
		header( "refresh:3; url=User.php" );
	
 }        
		?>
<!doctype html>
<html lang="en">
  <>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>PHP Installer</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <script src="https://getbootstrap.com/docs/4.0/assets/js/vendor/popper/.min.js"></script>
    <script src="https://getbootstrap.com/docs/4.0/dist/js/bootstrap.min.js"></script>
        <style>
    table{width: 30% !important; text-align: center; margin: auto; margin-top: 100px;}
    .success{
      color: green;
    }
    .error{
      color: red;
    }
</style>  
		
		<div>
        <table class="table">
    <thead>
      <tr>
        <th scope="col">Configuration</th>
        <th scope="col">Status</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <th scope="row">PHP Version</th>
        <td>
          <?php
          $is_error="";
          $php_version=phpversion();
          if($php_version>5){
              echo "<span class='success'>".$php_version."</span>";
          }else{
              echo "<span class='error'>".$php_version."</span>";
              $is_error='yes';
          }
          ?>
        </td>
      </tr>
      <tr>
        <th scope="row">Curl Install</th>
        <td>
          <?php
              $curl_version= function_exists('curl_version');
              if($curl_version){
                echo "<span class='success'>Yes</span>";
            }else{
                echo "<span class='error'>No</span>";
                $is_error='yes';
            }
          ?>
        </td>
      </tr>
      <tr>
        <th scope="row">Mail Function</th>
        <td>
        <?php
              $mail= function_exists('mail');
              if($mail){
                echo "<span class='success'>Yes</span>";
            }else{
                echo "<span class='error'>No</span>";
                $is_error='yes';
            }
          ?>
        </td>
      </tr>
      <tr>
        <th scope="row">Session Working</th>
        <td>
        <?php
              $_SESSION['IS_WORKING']=1;
              if(!empty($_SESSION['IS_WORKING'])){
                echo "<span class='success'>Yes</span>";
            }else{
                echo "<span class='error'>No</span>";
                $is_error='yes';
            }
          ?>
        </td>
      </tr>
      
      <tr>
      <th scope="row">Import all tables data</th>
      </tr>
      <tr>
      <th scope="row">Click the button bellow to start action</th>
      </tr>
      <tr>
        <td colspan="2">
        <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST">
		
		<input type = "submit" class="btn btn-success" name = "submit" value = "Submit"> 
		</form>
        </td>
      </tr>
    </tbody>
  </table>
		
		<p></p>
		
		</div>